//
//  HomeSpecialOffer.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeSpecialOffer: View {
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmFavorirte:HomeFavoriteViewModel
    @EnvironmentObject var vms:MainHomeTabViewModel
    @State var selectedCateg = MainCategory(name: "", img: "", nameAr: "", subImage: "", mainImg: "")

    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
//    @ObservedObject var vm : MainHomeTabViewModel
    @State var isSelectItem=false
    @State var isMainSeletct=false

    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Special Offers")
                    .foregroundColor(.black)
                    .font(.customFontSystem(size: 18))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    isMainSeletct=true
                    vm.selectedCategoryOffAll="Special Offers"
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
                                .font(.customFontSystem(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.mainColor)
                        }
                    )
                })
            }
            .padding(.horizontal)
            .padding(.vertical, 15)
            .padding(.bottom,4)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing:12){
                    
                    
                    //                    LazyHGrid(rows: columns,spacing: 12){
                    ForEach(vm.specialOffersArray){gradient in
//                        SpecialOfferRowView
//                        SpecialOfferRowView(vm: vm,x:gradient)

                        SSSpecialOfferRowView(vm: vm,x:gradient)
                            .onTapGesture(perform: {
                                withAnimation{
                                    selectedItem=gradient
                                    isSelectItem=true
                                }
                            })
                    }
                    //                    }
                    //                    .padding(.vertical)
                    
                }
                .padding(.horizontal,16)
            }
            .padding(.top,-16)
            
            //            .padding(.vertical)
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

struct HomeSpecialOsffer_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
