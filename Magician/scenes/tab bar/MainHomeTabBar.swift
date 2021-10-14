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
                MainHomeTab()
                //                SSecondMainHome()
                //                    .environmentObject(vm)
            }
            else if vm.index == "Filter" {
                HomeOrders()
                
                
            }
            
            else if vm.index == "Map" {
                Color.blue
                
            }
            else if vm.index ==  "Orders" {
                HomeOrders()

            }
            else {
               HomeAccount()

            }
            
            UsedTabBar()
                .transition(.move(edge: .trailing))
                .environmentObject(vm)
            
            
        })
        .environmentObject(vm)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainHomeTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTabBar()
    }
}
