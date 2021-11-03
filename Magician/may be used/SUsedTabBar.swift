////
////  SUsedTabBar.swift
////  Magician
////
////  Created by hosam on 26/10/2021.
////
//
//import SwiftUI
//
//struct SUsedTabBar: View {
//    @EnvironmentObject var vm:HomeMainTabBarViewModel
//    @Namespace var animation
//    
//    var body: some View {
//        HStack(spacing: 0){
//            
//            ForEach(vm.tabs){tab in
//                
//                STabButton(tab: tab, selectedTab: $vm.index, animation: animation)
//                    .environmentObject(vm)
////                TabButton(imageName: "", sImageName: "", title: tab, selectedTab: $vm.index, animation: animation)
////                TabButton(title: tab, selectedTab: $selectedTab,animation: animation)
//                if tab.title != vm.tabs.last?.title {
//                    Spacer(minLength: 0)
//                }
////                if tab.title != vm.tabs.last{
////                    Spacer(minLength: 0)
////                }
//            }
//        }
//        .padding(.horizontal,30)
//        // for iphone like 8 and SE
//        .padding(.bottom,getSafeArea()!.bottom == 0 ? 15 : getSafeArea()!.bottom)
//        .background(Color.white)
//    }
//}
//
//struct STabButton : View {
//    
////    var imageName : String
////    var sImageName : String
////
////    var title : String
//    var tab = TabModel(title: "Home", img: "Home", sImg: "Home-1")
//    @EnvironmentObject var vm:HomeMainTabBarViewModel
//
//    @Binding var selectedTab : String
//    var animation : Namespace.ID
//    
//    var body: some View{
//        
//        Button(action: {
//            withAnimation{selectedTab = tab.title}
//        }) {
//            
//                
//                    
//            ZStack {
//                VStack(spacing: 0){
//                            
//                            // Top Indicator....
//                            
//                            // Custom Shape...
//                            
//                            // Slide in and out animation...
//                            
//                            //                ZStack{
//                            
//                            Image("Rectangle 17385")
//                                .opacity(selectedTab==tab.title ? 1 : 0)
//                                .padding(.bottom,10)
//                            
//                        Image(selectedTab==tab.title ? tab.sImg : tab.img)
//                            .offset(y: selectedTab==tab.title ? 8 : 0)
//                        
////                            .overlay(
////
////                                Circle()
////                                    .fill(ColorConstants.mainColor)
////                                    .frame(width: 15, height: 15)
////                                    .overlay(
////
////                                        Text(("\(vm.totalAddedNewOrders)"))
////                                            .font(.system(size: 10))
////                                            .fontWeight(.bold)
////                                            .foregroundColor(.white)
////                                    )
////                                    .offset(x: 12, y: -2)
////                                        .opacity(selectedTab=="Orders"&&vm.addTabBadget() ? 1 : 0)
////
////    //                                    .opacity(vm.addTabBadget() ? 1 : 0)
////                        )
//                            
//                            Text(tab.title)
//                                .font(.caption)
//                                .fontWeight(.semibold)
//                                .opacity(selectedTab==tab.title ? 0 : 1)
//                                
//                                .foregroundColor(Color.black.opacity( 0.6 ))
//                }
//                .opacity(vm.index == "Orders"  ? 0 : 1 )
//                
//                if vm.index == "Orders" {
//                    
//                    VStack(spacing: 0){
//                                
//                                // Top Indicator....
//                                
//                                // Custom Shape...
//                                
//                                // Slide in and out animation...
//                                
//                                //                ZStack{
//                                
//                                Image("Rectangle 17385")
//                                    .opacity(selectedTab==tab.title ? 1 : 0)
//                                    .padding(.bottom,10)
//                                
//                            Image(selectedTab==tab.title ? tab.sImg : tab.img)
//                                .offset(y: selectedTab==tab.title ? 8 : 0)
//                            
//                                .overlay(
//                                
//                                    Circle()
//                                        .fill(ColorConstants.mainColor)
//                                        .frame(width: 15, height: 15)
//                                        .overlay(
//                                        
//                                            Text(("\(vm.totalAddedNewOrders)"))
//                                                .font(.system(size: 10))
//                                                .fontWeight(.bold)
//                                                .foregroundColor(.white)
//                                        )
//                                        .offset(x: 12, y: -2)
//                                            .opacity(selectedTab=="Orders"&&vm.addTabBadget() ? 1 : 0)
//
//        //                                    .opacity(vm.addTabBadget() ? 1 : 0)
//                            )
//                                
//                                Text(tab.title)
//                                    .font(.caption)
//                                    .fontWeight(.semibold)
//                                    .opacity(selectedTab==tab.title ? 0 : 1)
//                                    
//                                    .foregroundColor(Color.black.opacity( 0.6 ))
//                    }
//                    
//                }
//                
//            }
////                            .opacity(selectedTab==tab.title&&vm.addTabBadget() ? 1 : 0)
//
//           
//                
////                VStack(spacing: 0){
////
////                    // Top Indicator....
////
////                    // Custom Shape...
////
////                    // Slide in and out animation...
////
////                    //                ZStack{
////
////                    Image("Rectangle 17385")
////                        .opacity(selectedTab==tab.title ? 1 : 0)
////                        .padding(.bottom,10)
////
////
////                    ZStack {
////    //                    Image(selectedTab==tab.title ? tab.sImg : tab.img)
////    //                        .offset(y: selectedTab==tab.title ? 8 : 0)
////    //
////    //                        .overlay(
////    //
////    //                            Circle()
////    //                                .fill(ColorConstants.mainColor)
////    //                                .frame(width: 15, height: 15)
////    //                                .overlay(
////    //
////    //                                    Text(("\(vm.totalAddedNewOrders)"))
////    //                                        .font(.system(size: 10))
////    //                                        .fontWeight(.bold)
////    //                                        .foregroundColor(.white)
////    //                                )
////    //                                .offset(x: 12, y: -2)
////    //                                .opacity(selectedTab==tab.title&&vm.addTabBadget() ? 1 : 0)
////    //
////    //                        ,alignment:.topTrailing)
////
////
////                    }
////
////                    Text(tab.title)
////                        .font(.caption)
////                        .fontWeight(.semibold)
////                        .opacity(selectedTab==tab.title ? 0 : 1)
////
////                        .foregroundColor(Color.black.opacity( 0.6 ))
////                }
//            
//        }
//        //        .background(Color.red)
//    }
//    
// 
//}
//
//
//struct SUsedTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SUsedTabBar()
//    }
//}
