////
////  HomeRemindingOrdersTopView.swift
////  Magician
////
////  Created by hosam on 17/10/2021.
////
//
//import SwiftUI
//
//struct HomeRemindingOrdersTopView: View {
//    @EnvironmentObject var vmm:HomeMainTabBarViewModel
//    var body: some View {
//        HStack {
//            
//            Button(action: {withAnimation{
//                
//            }}, label: {
//                
//                
//                Label(
//                    title: {
//                        Text(LocalizedStringKey("Back"))
//                            .font(.customFontSystem(size: 27))
//                            .fontWeight(.bold)
//                            .padding(.horizontal)
//                    },
//                    icon: {
//                        
//                        Image(systemName: vmm.getBackImage())
//                        
//                    }
//                )
//                .foregroundColor(.black)
//                
//            })
//            Spacer()
//        }
//        .padding(.horizontal)
//    }
//}
//
//struct HomeRemindingOrdersTopView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
