//
//  MainHomeTabBar.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct MainHomeTabBar: View {
    @EnvironmentObject var vm : HomeMainTabBarViewModel
    @StateObject var vma = HomeAccountViewModel()
    @StateObject var vmas = HomeFavoriteViewModel()
        @StateObject var vmF = HomeFilterViewModel()

    @StateObject var vmh = MainHomeTabViewModel()
//    @StateObject var vms=MainHomeTabViewModel()

    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            
            if vm.index == "Home" {
                //                HomeAccount()
//                HomeSelectedCategory()
////                HomeAccount()
//                    .environmentObject(vma)
//                    .environmentObject(vms)
                
                //mains
//                HomeAccount()
//                                   .environmentObject(vma)
                
                MainHomeTab()
                    .environmentObject(vmh)
                    .environmentObject(vm)
                //                SSecondMainHome()
                //                    .environmentObject(vm)
            }
            else if vm.index == "Filter" {
                HomeFilter()
                    .environmentObject(vmh)
                    .environmentObject(vmF)
                
            }
            
            else if vm.index == "Favorite" {
                HomeFavorite()
                    .environmentObject(vm)
                    .environmentObject(vmas)
//                Color.blue
                //                    .padding(.horizontal,40)
                
            }
            else if vm.index ==  "Orders" {
                HomeOrders()
                //                    .padding(.horizontal,40)
                
            }
            else {
                HomeAccount()
                    .environmentObject(vma)
                
                //                .padding(.horizontal,40)
                
            }
            
            if !vm.isShowUserGift {

            UsedTabBar()
                .padding(.horizontal,24)
                //                .padding(.horizontal,-16)
                
                .transition(.move(edge: .trailing))
                .environmentObject(vm)
            
            }
            
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
