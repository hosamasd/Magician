////
////  HomeRemindingOrders.swift
////  Magician
////
////  Created by hosam on 17/10/2021.
////
//
//import SwiftUI
//
//struct HomeRemindingOrders: View {
//    @EnvironmentObject var vmm:HomeMainTabBarViewModel
//    @EnvironmentObject var vm:HomeOrdersViewModel
//
//    var body: some View {
//        VStack{
//            
//            
//            HomeRemindingOrdersTopView()
//            
//            ScrollView(showsIndicators:false) {
//                GifImage("1")
//                    .padding(.top)
//                
//                SelectedOrderRowView()
//            }
//            
//            
//            Spacer()
//        }
//        
//        .environmentObject(vmm)
//        .environmentObject(vm)
//    }
//}
//
//struct HomeRemindingOrders_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
////        HomeRemindingOrders()
//    }
//}
