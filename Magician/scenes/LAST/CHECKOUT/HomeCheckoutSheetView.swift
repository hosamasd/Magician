//
//  HomeCheckoutSheetView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutSheetView: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    
    var body: some View {
        VStack() {
            
            Spacer()
            
            VStack(spacing:8) {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {withAnimation{
                            vm.isAddVisaSheet.toggle()}}, label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                            })
                    
                }
                //                .padding()
                .padding(.horizontal,24)
                
                HStack {
                    
                    
                    
                    Text("Add Credit/Debit Card")
                        .font(.boldCustomFontSystem(size: 15))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.horizontal,24)
                
                
                VStack(spacing:16) {
                    
                    CustomTF(txt: $vm.cardNumber, hint: "Card Number",hide: .constant(false))
                        .keyboardType(.numberPad)
                    
                    HStack {
                        
                        Text("Expiry")
                            .font(.boldCustomFontSystem(size: 15))
                            .fontWeight(.bold)
                        
                        
                        Spacer()
                        
                        HStack(spacing:24) {
                            CustomTF(txt: $vm.expiryMonth, hint: "MM",hide: .constant(false))
                                .frame(width:100)
                            
                            
                            CustomTF(txt: $vm.expiryYear, hint: "YY",hide: .constant(false))
                                .frame(width:100)
                        }
                        
                    }
                    CustomTF(txt: $vm.securityCode, hint: "security Code",hide: .constant(false))
                        .keyboardType(.numberPad)
                    
                    CustomTF(txt: $vm.firstName, hint: "first Name",hide: .constant(false))
                    
                    CustomTF(txt: $vm.secondName, hint: "second Name",hide: .constant(false))
                    
                    HStack{
                        
                        Text("You can remove this card \n at anytime ")
                            .font(.boldCustomFontSystem(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(.black.opacity(0.6))
                        
                        Spacer()
                        
                        
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal,24)
                .padding(.top,30)
                
                Button(action: {withAnimation{
                    vm.isAddVisaSheet.toggle()
                }}, label: {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color("mains"))
                        .frame(height:60)
                        //                .padding(.top,50)
                        .frame(width:getFrameSize().width-48)
                        .overlay(
                            
                            
                            Label(
                                title: { Text("Add Card")
                                    .font(.boldCustomFontSystem(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                },
                                icon: { Image( "Group 8095")
                                    .padding(.horizontal,24)
                                }
                            )
                            .foregroundColor(.white)
                        )
                })
                //                .frame(height:60)
                .padding(.top,20)
                //                .frame(width:getFrameSize().width-48)
                //                .background(Color("mains").clipShape(Capsule()))
                .padding(.bottom,bottomSafeArea(x: 15))
                
                
            }
            //            .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            
            //            .padding(.bottom,10)
            //            .padding(.bottom,getSafeArea()?.bottom)
            .padding(.top,20)
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)))
            .offset(y: vm.isAddVisaSheet ? 0 : UIScreen.main.bounds.height/2)
        }
        .background(Color.black.opacity(0.6))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeCheckoutSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
        //        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
    }
}
