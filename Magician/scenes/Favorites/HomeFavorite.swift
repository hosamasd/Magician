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
                    
                    if vm.favoriteArray.isEmpty {
                        
                        
                        
                        VStack {
                            
                            Spacer()
                            
                            Text(LocalizedStringKey("No Favorites Found"))
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                        }
                    }
                    else {
                        
                        
                        ScrollView(showsIndicators:false){
                            
                            //                        HomeFavoriteTopView(columns: $columns)
                            //                            .padding(.vertical)
                            
                            
                            LazyVGrid(columns: columns,spacing: vm.isSingleItemLists == 1 ?  16 : 16){
                                
                                // assigning name as ID...
                                
                                ForEach(vm.favoriteArray,id: \.name){gradient in
                                    
                                    FavoriteRowView(x:gradient)
                                        .redacted(reason: vm.isLooding ? .placeholder : [])//for shimmer
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
                    
                }
                .padding(.horizontal,32)
                
                                if vm.isLooding {
                                    LoadingCapsuleSpacing()
                                }
            }
            
        }
        .environmentObject(vmm)
        .environmentObject(vm)
        
        .background(ColorConstants.bg)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .overlay(overlayView: Banner.init(data: Banner.BannerDataModel(title: "Eroor",titleAr: "خطأ", detail: vm.alertMsg, type: .error), show: $vm.alert)
                    .padding(.horizontal)
                 , show: $vm.alert)
        
        //        }
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
        
        .onAppear(perform: {
            withAnimation{
                                vm.favoriteArray.isEmpty ? vm.fetchApi() : ()
            }
        })
        
    }
    
    
    
    func getBottomSpace() ->CGFloat {
        CGFloat( isSmallDevice() ? 80 : 100)
    }
}

struct HomeFavorite_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
        //        HomeFavorite()
    }
}
