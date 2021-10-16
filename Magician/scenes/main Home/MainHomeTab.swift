//
//  MainHomeTab.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainHomeTab: View {
    @StateObject var vm = MainHomeTabViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel

    var body: some View {
        VStack {
            
            VStack {
                MainHomeTabTopView(vm:vm)
           
            
            ScrollView(showsIndicators:false){
                
//                HomeTopRating(vm: vm)

//                HomeTopRating(vm: vm)

//                HomeSpecialOffer(vm:vm)

                VStack {
                    MainHomeTabProfileInfo(vm:vm)
                        .padding(.top,20)
                        .padding(.bottom)
               

                CarsoelHome(vm: vm)
                
                HomeCategoryView(vm: vm)

                HomeTopRating(vm: vm)

                HomeSpecialOffer(vm:vm)

                }
                    .padding(.top,20)
//                    .frame(width:getFrameSize().width-28)
                    .padding(.bottom,getBottomSpace())
            }
           

            }
            
            .padding(.horizontal,32)
        }
        .environmentObject(vmm)
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    func getBottomSpace() ->CGFloat {
       CGFloat( isSmallDevice() ? 130 : 100)
    }
}

struct MainHomeTab_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
            .environmentObject(HomeMainTabBarViewModel())
    }
}
