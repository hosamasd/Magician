//
//  AddAddressSheetView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct AddAddressSheetView: View {
    @ObservedObject var vm:HomeAccountViewModel
@State var isHeight=false
    @StateObject var keyboardHeightHelper = KeyboardHeightHelper()
    
    var body: some View {
        VStack() {
            
            Spacer()
            
            VStack(spacing:8) {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {withAnimation{vm.isAddAddressSheet.toggle()}}, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    })
                    
                }
                .padding()
                .padding(.horizontal)
                
                Text("Add New Address")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
                    .overlay(
                    
                        TextField("", text: $vm.newAddedAddress, onEditingChanged: { s in
                            isHeight=s
                        }, onCommit: {
                            print(333)
                        })
                        
//                        Text(vm.newAddedAddress)
                            .padding(.vertical)
                            .padding(.horizontal)
                        ,alignment: .leading)
                    .frame(width:getFrameSize().width-64,height: 45)
                    .padding(.vertical,20)
                   
                
//                CustomTF(txt: $vm.newAddedAddress,hint: "Al-obour , Cairo , Egypt", hide: .constant(false),isAddress:true)
//                    .onTapGesture(perform: {
//                        withAnimation{vm.isSHowLocation.toggle()}
//                    })
                
                Spacer()
                    .frame(height:isHeight ? self.keyboardHeightHelper.keyboardHeight-100 : 0)
                
                Button(action: {
                    withAnimation{
//                        vm.isOTP.toggle()
//                                vm.isLooding=true

                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(ColorConstants.mainColor)
                        .overlay(
                            
                            Text("Add")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
                .padding(.top,10)
//                .padding(.bottom,bottomSafeArea(x: 15))
                .frame(width:getFrameSize().width-48)

                
            }
//            .offset(y: -self.keyboardHeightHelper.keyboardHeight)

            .padding(.bottom,bottomSafeArea(x: 30,y: 0) )

//            .padding(.bottom,10)
//            .padding(.bottom,getSafeArea()?.bottom)
            .padding(.top,20)
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)))
            .offset(y: vm.isAddAddressSheet ? 0 : UIScreen.main.bounds.height/2)
        }
        .background(Color.black.opacity(0.6))
        .edgesIgnoringSafeArea(.all)
//        .onTapGesture(perform: {
//            withAnimation{vm.isAddAddressSheet.toggle()
////                vmm.isHideTabBar.toggle()
//            }
//        })
    }
}

struct AddAddressSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccount()
//    AccountSavedAddress(vm: HomeAccountViewModel(),vmm: HomeMainTabBarViewModel())
    }
}
