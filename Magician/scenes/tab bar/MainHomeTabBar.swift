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
                Color.red
                //                SSecondMainHome()
                //                    .environmentObject(vm)
            }
            else if vm.index == "Filter" {
                Color.gray
                
                
            }
            
            else if vm.index == "Map" {
                Color.blue
                
            }
//            else if vm.index ==  "Account" {
//                Color.orange
//
//            }
            else {
                Color.black

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
