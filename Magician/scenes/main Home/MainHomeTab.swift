//
//  MainHomeTab.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainHomeTab: View {
    @StateObject var vm = MainHomeTabViewModel()
    
    var body: some View {
        VStack {
            
            MainHomeTabTopView(vm:vm)
            
            ScrollView(showsIndicators:false){
                

                
                MainHomeTabProfileInfo(vm:vm)
                    .padding(.top,20)

                HomeCategoryView(vm: vm)

                HomeTopRating(vm: vm)

                HomeSpecialOffer(vm:vm)

            }
            
        }
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct MainHomeTab_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
