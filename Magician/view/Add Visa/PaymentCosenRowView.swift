//
//  PaymentCosenRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct PaymentCosenRowView: View {
    var x = ""
    var img = ""
    
    @Binding var isSelect : Bool
    @ObservedObject var vm:HomeCheckoutViewModel
    var isFirst = false
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 6)
            .stroke(ColorConstants.visa)//.gray.opacity(0.6), lineWidth: 1)
            .frame(height:51)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    
                    .fill(Color.gray.opacity(0.05))
                    
                    .overlay(
                        HStack {
                            
                            Label(
                                title: { Text(x) },
                                icon: {
                                    if isFirst { Text("")
                                    }
                                    else {
                                        
                                        Image(img)
                                    }
                                }
                            )
                            
                            Spacer()
                            
                            Button(action: {withAnimation{
                                vm.makeCheckVisa(s: &isSelect)
                                //                isSelect.toggle()
                            }}, label: {
                                Image(isSelect ? "Group 6914-1" : "Group 6914")
                            })
                            
                            
                        }
                        //        .background(Color.gray.opacity(0.05))
                        .frame(height:50)
                        
                        .padding(.horizontal,16)
                    )
                
            )
        
        //        .overlay(
        //
        //            RoundedRectangle(cornerRadius: 6)
        //                .stroke(Color.gray.opacity(0.6), lineWidth: 1)
        //        )
        
        //            )
        //    .frame(height:50)
        
        //        HStack {
        //
        //            Label(
        //                title: { Text(x) },
        //                icon: {
        //                    if isFirst { Text("")
        //                    }
        //                        else {
        //
        //                Image(img)
        //                    }
        //                    }
        //            )
        //
        //            Spacer()
        //
        //            Button(action: {withAnimation{
        //                vm.makeCheckVisa(s: &isSelect)
        ////                isSelect.toggle()
        //            }}, label: {
        //                Image(isSelect ? "Group 6914-1" : "Group 6914")
        //            })
        //
        //
        //
        //        }
        //        .padding(.horizontal,16)
        //        .frame(height:50)
        //        .background(Color.gray.opacity(0.05))
        //        .cornerRadius(6)
    }
}

struct PaymentCosenRowView_Previews: PreviewProvider {
    static var previews: some View {
        SHomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
    }
}
