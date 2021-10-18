//
//  HomeSelectedCategory.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct HomeSelectedCategory: View {
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    var x = "Top Rating"

    var body: some View {
//        VStack {
            
            ZStack {
                
                VStack {
                    
                    VStack {
                        
                    HomeSelectedCategoryTopView()
//                        .padding(.horizontal,8)
//                        .padding(.bottom,20)
                    
                        SecondHomeSelectedCategoryTopView(columns: $columns)
                            .padding(.vertical)
                        
                        if vm.isMainCategoryChosen{
                        ThirdHomeSelectedCategoryTopView()
                            .padding(.bottom)
                        }
                        
                    ScrollView(showsIndicators:false){
                        
//                        SecondHomeSelectedCategoryTopView()

//                        SecondHomeSelectedCategoryTopView(columns: $columns)
//                            .padding(.vertical)
//
//                        if vm.isMainCategoryChosen{
//                        ThirdHomeSelectedCategoryTopView()
//                            .padding(.bottom)
//                        }
//                            .opacity(vm.isMainCategoryChosen ? 1 : 0)
                        
                        LazyVGrid(columns: columns,spacing: vm.isSingleItemLists == 1 ?  16 : 16){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.topRatingArray,id: \.name){gradient in
                                
                                SelectedCategoryRowView(x:gradient)
                                //                                    GradientView(columns: $columns, gradient: gradient, vm: vm)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                }
                
                }
                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )

            }
            .edgesIgnoringSafeArea(.all)

//        }
        
        .environmentObject(vmm)
    }
}

struct HomeSelectedCategory_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        ContentView()
    }
}
