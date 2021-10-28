//
//  HomeAccount.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccount: View {
    //    @StateObject var vm = HomeAccountViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @EnvironmentObject var vm : HomeAccountViewModel
    
    
    
    //    var name : Namespace.ID
    
    var body: some View {
        VStack {
            
            ZStack {
                
                VStack {
                    
//                    HomeAccountTopView(vm:vm)
                    HomeAccountTopView()
                        .padding(.horizontal,32)
                        

                    ScrollView(showsIndicators:false){
                        
                        HomeAccountImage()
                            .onTapGesture(perform: {
                                withAnimation{
                                    vmm.isHideTabBar=true
                                    vmm.isShowUserGift=true}
                            })
//                            .onTapGesture

//                        HomeAccountImage(vm:vm)
                            .padding(.top,20)
                        
                        
                        VStack {
                            HomeAccountPointsView(vm: vm)
                                .padding(.bottom)
                            
                            HomeAccountGifts()
                            
                            
                            VStack(spacing:28) {
                                
                                AccountRowView(vm: vm)
                                    .onTapGesture(perform: {
                                        withAnimation{vm.isAccountInfo.toggle()}
                                    })
                                
                                AccountRowView(vm: vm,name: "Saved addresses")
                                    .onTapGesture(perform: {
                                        withAnimation{vm.isSavedAddress.toggle()}
                                    })
                                
                                AccountRowView(vm: vm,name: "Wallet",isText: true,isOriginal: false)
                                
                                AccountRowView(vm: vm,name: "Change password")
                                    .onTapGesture(perform: {
                                        withAnimation{vm.isChangePassword.toggle()}
                                    })
                                AccountRowView(vm: vm,name: "Notification",isCheck: true,isOriginal: false)
                                AccountRowView(vm: vm,name: "Language",isCheck: false,isOriginal: false,isChangeLanguage: true)
                                AccountRowView(vm: vm,name: "Logout",isCheck: false,isOriginal: false,isLogout: true)
                                    .onTapGesture(perform: {
                                        withAnimation{vm.isShowLogout.toggle()}
                                    })
                                
                                
                            }
                            .padding(.vertical,30)
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                        //                        .background(Color.white)
                        .padding(.top,20)
                        
                    }

                    .padding(.bottom,CGFloat(isSmallDevice() ? 60 : 80))
                    .frame(width:getFrameSize().width-64)

                    
                }

//                .padding(.horizontal,32)
                //                .environmentObject(vmm)
                
                if vm.isLooding {
                    LoadingCapsuleSpacing()
                }
                
                if vmm.isShowUserGift {
                    AccountSheetView( )
                        .opacity(vmm.isShowUserGift ? 1 : 0)
                        //            EditSheets( vm: vm)
                        .transition(.move(edge: .bottom))
                        .environmentObject(vmm)
                        .environmentObject(vm)
                    //                    .padding(.horizontal)
                }
            }
            
            
            
            Spacer()
        }
        
        .environmentObject(vmm)
        .environmentObject(vm)

        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
        .alert(isPresented:$vm.isShowLogout) {
            Alert(
                title: Text(" Logout?"),
                message: Text("Are you sure you want to Logout?"),
                primaryButton: .default(Text("Logout")) {
                    //                    withAnimation{
                    ////                        vmm.isShowUserForMainLogout=false
                    ////                        //                        presentationMode.wrappedValue.dismiss()
                    ////
                    ////                        isUserLogin.toggle()
                    //
                    //                    }
                    vm.makeLogout(vm: vmm)
                    
                    //                    vmm.index=0
                    //                    vmm.isLogout=true
                },
                secondaryButton: .cancel()
            )
        }
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isSavedAddress, content: {
                            AccountSavedAddress()
//                                .environmentObject(vmm)
                                .environmentObject(vmm)
                                .environmentObject(vm)
//                            AccountSavedAddress(vm: vm,vmm: vmm, name: name)
                            
                        })
        )
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isAccountInfo, content: {
                            AccountInfoView()
//                                .environmentObject(vmm)
                                .environmentObject(vmm)
                                .environmentObject(vm)
//                            AccountInfoView(vm: vm,vmm: vmm)
                            
                        })
        )
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isChangePassword, content: {
                            AccountChangePassword()
//                                .environmentObject(vmm)
                                .environmentObject(vmm)
                                .environmentObject(vm)
//                            AccountChangePassword(vm: vm,vmm: vmm)
                            
                        })
        )
    }
}

struct HomeAccount_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        HomeAccount()
    }
}
