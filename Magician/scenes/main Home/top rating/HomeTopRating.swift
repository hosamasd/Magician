//
//  HomeTopRating.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeTopRating: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    //    @ObservedObject var vm : MainHomeTabViewModel
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmFavorirte:HomeFavoriteViewModel
    @EnvironmentObject var vms:MainHomeTabViewModel
    
    @Binding var isShow:Bool
    @State var isSelectItem=false
    @State var isMainSeletct=false
    @State var selectedCateg = MainCategory(name: "", img: "", nameAr: "", subImage: "", mainImg: "")
    
    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    
    //    @Binding var selected:MainCategory
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Top Rating")
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    //                    vm.isMainCategoryChosen=true
                    //                    isShow=true
                    isMainSeletct=true
                    //                    vm.isSelectFromCateg=true
                    //                    vm.isSelectFromCateg=true
                    vm.selectedCategoryOffAll="Top Rating"
                    //                    vm.isSelectedCategoryOffAll.toggle()
                }
                }, label: {
                    Label(
                        title: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(ColorConstants.mainColor)
                                .padding(.leading,-6)
                            
                        },
                        icon: {
                            Text("View All")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.mainColor)
                        }
                    )
                })
            }
            .padding(.horizontal)
            .padding(.vertical, 15)//top
            .padding(.bottom,4)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing:12){
                    
                    
                    //                    LazyHGrid(rows: columns,spacing: 12){
                    ForEach(vm.topRatingArray){gradient in
                        
                        STopRatingRowView(vm: vm, x: gradient)
                            .onTapGesture(perform: {
                                withAnimation{
                                    selectedItem=gradient
                                    isSelectItem=true
                                }
                            })
                    }
                    //                    }
                    
                }
                .padding(.horizontal,16)
            }
            .padding(.top,-16)
        }
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isMainSeletct, content: {
                            HomeSelectedCategory(isShow: $isMainSeletct, x:selectedCateg)
                                .environmentObject(vms)
                                .environmentObject(vm)
                                
                                .environmentObject(vmFavorirte)
                            
                        })
        )
    }
}

struct HomeTopRating_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
