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
//        LoginView(vm: HomeReigtserViewModel())

//        MainHomeTabBar()
        
        //enteredLocation: $enteredLocation)

        MainHomeTabBar()
            .environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
