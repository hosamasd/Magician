//
//  MainHomeTabBar.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct MainHomeTabBar: View {
    @EnvironmentObject var vm : HomeMainTabBarViewModel
    
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            
            if vm.index == "Home" {
                HomeAccount()
//                MainHomeTab()
                //                SSecondMainHome()
                //                    .environmentObject(vm)
            }
            else if vm.index == "Filter" {
                HomeOrders()
                
                
            }
            
            else if vm.index == "Map" {
                Color.blue
//                    .padding(.horizontal,40)

            }
            else if vm.index ==  "Orders" {
                HomeOrders()
//                    .padding(.horizontal,40)

            }
            else {
               HomeAccount()
//                .padding(.horizontal,40)

            }
            
            UsedTabBar()
                .padding(.horizontal,24)
//                .padding(.horizontal,-16)

                .transition(.move(edge: .trailing))
                .environmentObject(vm)
            
            
        })

        .environmentObject(vm)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainHomeTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        MainHomeTabBar()
    }
}
