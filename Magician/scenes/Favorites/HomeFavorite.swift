//
//  HomeFavorite.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct HomeFavorite: View {
    @EnvironmentObject var vm:HomeFavoriteViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    
    @State var isSelectItem=false
    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    
    var body: some View {
        VStack {
            
            ZStack {
                
                VStack {
                    
                    HomeSelectedCategoryTopView()
                    //                        .padding(.horizontal,8)
                    //                        .padding(.bottom,20)
                    
                    HomeFavoriteTopView(columns: $columns)
                        .padding(.vertical)
                    
                    ScrollView(showsIndicators:false){
                        
                        //                        HomeFavoriteTopView(columns: $columns)
                        //                            .padding(.vertical)
                        
                        
                        LazyVGrid(columns: columns,spacing: vm.isSingleItemLists == 1 ?  16 : 16){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.favoriteArray,id: \.name){gradient in
                                
                                FavoriteRowView(x:gradient)
                                    .onTapGesture(perform: {
                                        selectedItem=gradient
                                        isSelectItem=true
                                    })
                                //                                    GradientView(columns: $columns, gradient: gradient, vm: vm)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        .padding(.bottom,getBottomSpace())
                        
                    }
                    
                }
                .padding(.horizontal,32)
                
                if vm.isLooding {
                    LoadingCapsuleSpacing()
                }
            }
            
        }
        .environmentObject(vmm)
        .environmentObject(vm)
        
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        //        }
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
        
    }
    
    
    
    func getBottomSpace() ->CGFloat {
        CGFloat( isSmallDevice() ? 80 : 100)
    }
}

struct HomeFavorite_Previews: PreviewProvider {
    static var previews: some View {
        HomeFavorite()
    }
}
