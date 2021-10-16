//
//  ContentView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = HomeMainTabBarViewModel()
    @StateObject var vms = HomeReigtserViewModel()

    var body: some View {
        
//        MainHomeTabBar()
//                    .environmentObject(vm)
        
        
//        LoginView(vm: HomeReigtserViewModel())

//        MainHomeTabBar()
        
        //enteredLocation: $enteredLocation)

//        AccountSavedAddress(vm: HomeAccountViewModel())
        
            
            
//final
                    MainHomeWelcome()
            .environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
