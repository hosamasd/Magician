//
//  HomeCategoryView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeCategoryView: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @ObservedObject var vm : MainHomeTabViewModel
    
    @Binding var isShow:Bool
    @Binding var selected:MainCategory
//    @Binding var selectedCateg:String
//    @Binding var selectedCategImg:String
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Categories")
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                
                Spacer()
                
                //                Button(action: {withAnimation{vm.selectedCategoryOffAll="Categories"}}, label: {
                //                    Label(
                //                        title: {
                //                            Image(systemName: "chevron.forward")
                //                                .foregroundColor(ColorConstants.mainColor)
                //                                .padding(.leading,-6)
                //                            
                //                        },
                //                        icon: {
                //                            Text("View All")
                //                                .font(.customFontSystem(size: 12))
                //                                .fontWeight(.bold)
                //                                .foregroundColor(ColorConstants.mainColor)
                //                        }
                //                    )
                //                })
            }
            .padding(.horizontal)
            .padding(.top, 15)
            .padding(.bottom,4)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                HStack(spacing:8){
                    
                    //                    LazyVGrid(columns: columns,spacing: 12){
                    
                    ForEach(vm.categoryArray){index in
                        
                        CategoryRowView(x: index, vm: vm)
                            .onTapGesture(perform: {
                                withAnimation{
                                    vm.isMainCategoryChosen=true
                                    selected=index
                                    isShow.toggle()
//                                    sele
//                                    vm.mainCategoryChosenName=index.subImage
//                                    vm.selectedCategoryOffAll=index.name
//                                    vm.isSelectedCategoryOffAll.toggle()
//                                    vm.isMainCategoryChosen.toggle()
                                }
                            })
                        //                            TopRatingRowView(vm: vm,x:vm.topRatingArray[index])
                        
                    }
                    
                    
                    
                }
                .padding(.horizontal)
            }
            
            
        }
        .onAppear {
            setupAppearance()
        }
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(ColorConstants.mainColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(ColorConstants.mainColor).withAlphaComponent(0.2)
    }
}

struct HomeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
