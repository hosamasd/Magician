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
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var x = "Top Rating"
    
    var body: some View {
        VStack {
            
            ZStack {
                
                VStack {
                    
                    HomeSelectedCategoryTopView()
                    
                    
                    ScrollView(showsIndicators:false){
                        
                        SecondHomeSelectedCategoryTopView(columns: $columns)
                            .padding(.vertical)
                        
                        
                        LazyVGrid(columns: columns,spacing: 12){
                            
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
        }
        
        .environmentObject(vmm)
    }
}

struct HomeSelectedCategory_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
