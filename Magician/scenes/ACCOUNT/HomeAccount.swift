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
