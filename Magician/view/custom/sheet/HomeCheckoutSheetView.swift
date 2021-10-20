//
//  HomeCheckoutSheetView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutSheetView: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    @State var isFocus=false
    
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
                    
                    //                    ScrollView {
                    
                    HStack {
                        
                        
                        
                        Text("Add Credit/Debit Card")
                            .font(.boldCustomFontSystem(size: 15))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.horizontal,24)
                    
                    
                    VStack(spacing:16) {
                        
                        CustomTF(txt: $vm.cardNumber, hint: "Card Number",hide: .constant(false),isAddVisa:true)
                            .keyboardType(.numberPad)
                        
                        HStack {
                            
                            Text("Expiry")
                                .font(.boldCustomFontSystem(size: 15))
                                .fontWeight(.bold)
                            
                            
                            Spacer()
                            
                            HStack(spacing:24) {
                                
                                RoundedRectangle(cornerRadius: 24)
                                    .fill(Color("txField"))
                                    
                                    .frame(width:80,height:60)
                                    .overlay(
                                        
                                        Text(vm.expiryMonth)
                                            .foregroundColor(Color("hintTF"))
                                        
                                    )
                                    .onTapGesture(perform: {
                                        withAnimation{
                                            vm.isMonth.toggle()
                                        }
                                    })
                                
                                RoundedRectangle(cornerRadius: 24)
                                    .fill(Color("txField"))
                                    .frame(width:80,height:60)
                                    .overlay(
                                        
                                        Text(vm.expiryYear)
                                            .foregroundColor(Color("hintTF"))
                                        
                                    )
                                    .onTapGesture(perform: {
                                        withAnimation{
                                            vm.isYear.toggle()
                                        }
                                    })
                                
                            }
                            
                        }
                        CustomTF(txt: $vm.securityCode, hint: "security Code",hide: .constant(false),isAddVisa:true)
                            .keyboardType(.numberPad)
                        
                        CustomTF(txt: $vm.firstName, hint: "first Name",hide: .constant(false),isAddVisa:true)
                            .frame(height:60)
                        
                        
                        //                        CustomTF(txt: $vm.secondName, hint: "second Name",hide: .constant(false),isAddVisa:true)
                        SCustomTF(txt: $vm.secondName,isFocus: $isFocus, hint: "second Name")
                        
                        //                            .
                        
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
                    .offset(y:isFocus  ? -60 : 0)
                    
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
                .background(GETBG().clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)))
                .offset(y: vm.isAddVisaSheet ? 0 : UIScreen.main.bounds.height/2)
                //                .keyboardSpace()
                
                
                
                //            .background(Color.black.opacity(0.6))
                //            .edgesIgnoringSafeArea(.all)
            }
          
            .background(Color.black.opacity(0.6))
            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea(.keyboard, edges: .bottom)
            .popup(isPresented: vm.isMonth) {
                BottomPopupView {
                    YearPicker.init(isMonth: $vm.isMonth,isYear:$vm.isYear, monthText: $vm.expiryMonth, yearText: $vm.expiryYear)
                }
            }
            
            .popup(isPresented: vm.isYear) {
                BottomPopupView {
                    YearPicker.init(isMonth: $vm.isMonth,isYear:$vm.isYear, monthText: $vm.expiryMonth, yearText: $vm.expiryYear)
                }
        }
        //            .popup(isPresented: vm.isMonth, alignment: .center, content:
        //                    YearPicker.init(isMonth: $vm.isMonth, monthText: $vm.expiryMonth, yearText: $vm.expiryYear)
        ////                    YearPicker(isMonth: $vm.isMonth, monthText: $vm.expiryMonth, yearText: $vm.expiryYear)
        //            )
        
    }
    
    func GETBG() -> Color {
        if vm.isYear || vm.isMonth {
            return  Color.white.opacity(0.6)
        }else {
            return Color.white//.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)
        }
    }
}

struct HomeCheckoutSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
        //        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
    }
}
