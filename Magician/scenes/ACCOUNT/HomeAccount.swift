//
//  HomeAccount.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccount: View {
    @StateObject var vm = HomeAccountViewModel()
    
    var body: some View {
        VStack {
            
            HomeAccountTopView(vm:vm)
            
            ScrollView(showsIndicators:false){
                
                HomeAccountImage(vm:vm)
                    .padding(.top,20)
                
                VStack {
                    HomeAccountPointsView(vm: vm)
                    
                    VStack(spacing:28) {
                        
                        AccountRowView(vm: vm)
                            .onTapGesture(perform: {
                                withAnimation{vm.isAccountInfo.toggle()}
                            })
                        
                        AccountRowView(vm: vm,name: "Saved addresses")
                        
                        AccountRowView(vm: vm,name: "Wallet",isText: true,isOriginal: false)
                        
                        AccountRowView(vm: vm,name: "Change password")
                        
                        AccountRowView(vm: vm,name: "Notification",isCheck: true,isOriginal: false)
                        
                        
                    }
                    .padding(.vertical,30)
                }
                .background(Color.white)
                .padding(.top,20)
                
            }
            .padding(.bottom,isSmallDevice() ? 60 : 40)
            Spacer()
        }
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
        
        //        .background(EmptyView()
        //                        .fullScreenCover(isPresented: $isFQAS, content: {
        //
        //                            HomeFAQS(isShow: $isFQAS)
        //
        //                        })
        //        )
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isAccountInfo, content: {
                            
                            AccountInfoView(vm: vm)
                            
                        })
        )
    }
}

struct HomeAccount_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccount()
    }
}
