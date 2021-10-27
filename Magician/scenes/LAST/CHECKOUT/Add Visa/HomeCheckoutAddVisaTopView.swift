//
//  HomeCheckoutAddVisaTopView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutAddVisaTopView: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    
    var body: some View {
        VStack {
            
            VStack(alignment:.leading){
                
                Text(LocalizedStringKey("Delivery Address"))
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.8))
                    
                    //                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.vertical)
                
                HStack {
                    
                    ZStack {
                        if self.vm.address.isEmpty {
                            TextEditor(text:.constant("Add Your Address...."))
                                .font(.system(size: 16))
                                
                                //                                .padding()
                                
                                //                                        .font(.body)
                                .foregroundColor(.black)
                                .disabled(true)
                        }
                        TextEditor(text: $vm.address)
                            .font(.system(size: 16))
                            .lineLimit(2)
                            .disabled(vm.isChangeAddress ? false : true)
                            .frame(height:60)
                            
                            .padding(.trailing)
                            .fixedSize(horizontal: false, vertical: true)
                            .opacity(self.vm.address.isEmpty ? 0.25 : 1)
                        
                    }
                    //                        .introspectTextView { textView in
                    //                                textView.isScrollEnabled = false
                    //                            }
                    //                    Text(vm.address)
                    //                        .font(.system(size: 16))
                    //                        .fontWeight(.semibold)
                    //                        .lineSpacing(6)
                    
                    Spacer()
                    
                    Button(action: {withAnimation{
                        vm.isChangeAddress.toggle()
                    }}, label: {
                        Text(LocalizedStringKey("Change"))
                            .foregroundColor(Color("mains"))
                    })
                }
            }
            .padding(.vertical)
            
        }
        //        .background(Color.white)
    }
}

struct HomeCheckoutAddVisaTopView_Previews: PreviewProvider {
    static var previews: some View {
        SHomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
        
        //        HomeCheckoutAddVisaTopView()
    }
}
