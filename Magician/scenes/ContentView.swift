//
//  ContentView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = HomeMainTabBarViewModel()
    var body: some View {
//        LoginView(vm: HomeReigtserViewModel())

        MainHomeReg()
//        MainHomeTabBar()
//            .environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
