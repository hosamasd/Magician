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
            
            VStack {
                HomeAccountPointsView(vm: vm)
                
                VStack(spacing:28) {
                    
                    AccountRowView(vm: vm)
                    
                    AccountRowView(vm: vm,name: "Saved addresses")
                    
                    AccountRowView(vm: vm,name: "Wallet",isText: true,isOriginal: false)
                    
                    AccountRowView(vm: vm,name: "Change password")
                    
                    AccountRowView(vm: vm,name: "Notification",isCheck: true,isOriginal: false)
                    
                    
                }
                .padding(.vertical,30)
            }
            .padding(.top,20)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
    }
}

struct HomeAccount_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccount()
    }
}
