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
    //    var x = "Top Rating"
    @Binding var isShow:Bool
    //    @Binding var selectedCateg:String
    //    @Binding var selectedCategImg:String
    
    var x = MainCategory(name: "", img: "", nameAr: "", subImage: "", mainImg: "")
    @State var isShowFilter=false
    @State var isSelectItem=false
    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    var body: some View {
        //        VStack {
        
        ZStack {
            
            VStack {
                
                VStack {
                    
                    HomeSelectedCategoryTopView()
                    //                        .padding(.horizontal,8)
                    //                        .padding(.bottom,20)
                    
                    SecondHomeSelectedCategoryTopView(columns: $columns, isShow: $isShow,x:x,isShowFilter: $isShowFilter)
                        
                        //                    SecondHomeSelectedCategoryTopView(columns: $columns)
                        .padding(.vertical)
                    
                    if vm.isMainCategoryChosen{
                        ThirdHomeSelectedCategoryTopView()
                            .padding(.bottom)
                    }
                    
                    ScrollView(showsIndicators:false){
                        
                        
                        LazyVGrid(columns: columns,spacing: vm.isSingleItemLists == 1 ?  16 : 16){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.topRatingArray,id: \.name){gradient in
                                
                                SelectedCategoryRowView(x:gradient)
                                    .onTapGesture(perform: {
                                        selectedItem=gradient
                                        isSelectItem=true
                                    })
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
        .environmentObject(vm)
        
        .environmentObject(vmm)
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isShowFilter, content: {
                                            HomeFilterProcess(isShowFilter: $isShowFilter)  })
        )
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
        
        //        SelectedItemScenes
    }
}

struct HomeSelectedCategory_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
        //        ContentView()
    }
}
