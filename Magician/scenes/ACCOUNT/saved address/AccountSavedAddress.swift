//
//  AccountSavedAddress.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountSavedAddress: View {
//    @ObservedObject var vm:HomeAccountViewModel
//    @ObservedObject var vmm:HomeMainTabBarViewModel
    
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @EnvironmentObject var vm : HomeAccountViewModel
    var names = "Saved addresses"
    
//    var name : Namespace.ID
    @State var changePositions=false
    
    var body: some View {
        ZStack {
            VStack {
                
                HomeAccountTopView()
                    .padding(.bottom,20)
                
                VStack {
                    HStack {
                        
                        Button(action: {withAnimation{vm.isSavedAddress.toggle()}}, label: {
                            Image(systemName: vmm.getBackImage())//"chevron.backward")
                                .font(.system(size: 25))
                                .foregroundColor(ColorConstants.mainColor)
                            
                        })
                        
                        Spacer()
                        
                        Text(names)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.mainColor)
                            .offset(x: changePositions ? 0 : -600,y:changePositions ? 0 : 200)//, y: changePositions ? 0 )

                        Spacer()
                        
                    }
                    .padding(.horizontal,8)
                    .padding(.bottom,20)
//                    .offset(x: changePositions ? 0 : -600)//, y: changePositions ? 0 )
                    
                    
                    
                    VStack(spacing:20) {
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{vm.isAddAddressSheet.toggle()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(ColorConstants.mainColor)
                            .overlay(
                                
                                Text("Add New Address")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .frame(height:60)
                    
                    
                }
                .padding(.horizontal,24)
                
            }
            .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            
            if vm.isAddAddressSheet {
                
                AddAddressSheetView(vm: vm)
                    //                    .environmentObject(vmm)
                    .transition(.move(edge: .bottom))
                
                
            }
            
            if vm.isSHowLocation {
                //                LoadingCircleOpacity()
                LocationView(dismiss: $vm.isSHowLocation, locationText: $vm.newAddedAddress,isAdd:true)
                    //                LocationView(  locationText: $vm.newAddedAddress )
                    //                    .environmentObject(vm)
                    .transition(.move(edge: .bottom))
                
            }
            //            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            withAnimation{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
                    withAnimation{
                        changePositions=true
                    }
                }
            }
        })
        .onDisappear(perform: {
            withAnimation{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
                    withAnimation{
                        changePositions=false
                    }
                }
            }
        })
    }
}

struct AccountSavedAddress_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
