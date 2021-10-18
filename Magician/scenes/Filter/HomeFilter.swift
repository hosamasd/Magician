//
//  HomeFilter.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeFilter: View {
    //    @EnvironmentObject var vm : HomeFilterViewModel
    @StateObject var vm = HomeFilterViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        ZStack {
            
            VStack {
                
                VStack {
                    
                    HomeFilterTopView()
                    //                        .padding(.horizontal,8)
                    //                        .padding(.bottom,20)
                    
                    SecondHomeFilterTopView()
                        .padding(.vertical)
                    
                    
                    ScrollView(showsIndicators:false){
                        
                        
                        LazyVGrid(columns: columns,spacing:16){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.filterArray,id: \.name){gradient in
                                
                                HomeFilterRowView(x:gradient)
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
        
        //        .environmentObject(vmm)
    }
}

struct HomeFilter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
