//
//  MainHomeTab.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainHomeTab: View {
    //    @StateObject var vm = MainHomeTabViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmFavorirte:HomeFavoriteViewModel
    
    
    @State var isSelectFromCateg=false
    //    @State var selectedCategName=""
    //    @State var selectedCategImg=""
    @State var selectedCateg = MainCategory(name: "", img: "", nameAr: "", subImage: "", mainImg: "")
    
    var body: some View {
        //        ZStack {
        VStack {
            
            ZStack {
                
                VStack {
                    MainHomeTabTopView(vm:vm)
                    
                    
                    ScrollView(showsIndicators:false){
                        
                        //                HomeTopRating(vm: vm)
                        
                        //                HomeTopRating(vm: vm)
                        
                        //                HomeSpecialOffer(vm:vm)
                        
                        VStack {
                            MainHomeTabProfileInfo(vm:vm)
                                //                                .padding(.top,20)
                                .padding(.bottom)
                            
                            
                            CarsoelHome(vm: vm)
                            
                            //                            HomeCategoryView(vm: vm)
                            HomeCategoryView(vm: vm, isShow: $isSelectFromCateg, selected: $selectedCateg)
                            
                            HomeTopRating(isShow:$vm.isSelectedCategoryOffAll)
                            //                            HomeTopRating(vm: vm,isShow:$isSelectFromCateg)
                            
                            HomeSpecialOffer()
                            //                            HomeSpecialOffer(vm:vm)
                            
                        }
                        .padding(.top,20)
                        //                    .frame(width:getFrameSize().width-28)
                        //                        .padding(.bottom,getBottomSpace())
                        .padding(.bottom)
                        .padding(.bottom,isSmallDevice() ? 80 : 100)
                    }
                    
                    
                }
                
                .padding(.horizontal,32)
                
                if vm.isLooding {
                    LoadingCapsuleSpacing()
                }
            }
            
        }
        .environmentObject(vm)
        .environmentObject(vmm)
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .onAppear(perform: {
            vm.topRatingArray.isEmpty ? vm.getData() : ()
        })
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectFromCateg, content: {
                            HomeSelectedCategory(isShow: $isSelectFromCateg, x:selectedCateg)
                                .environmentObject(vmm)
                                .environmentObject(vm)
                            
                                .environmentObject(vmFavorirte)
                            
                        })
        )
        //            .background(EmptyView()
        //                            .fullScreenCover(isPresented: $vm.isSelectedCategoryOffAll, content: {
        //                                HomeSelectedCategory()
        //                                    .environmentObject(vmm)
        //                                    .environmentObject(vm)
        //
        //                            })
        //            )
        
        
        
    }
    
    func getBottomSpace() ->CGFloat {
        CGFloat( isSmallDevice() ? 80 : 100)
        
        //        CGFloat( isSmallDevice() ? 130 : 100)
        
    }
}

struct MainHomeTab_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
            .environmentObject(HomeMainTabBarViewModel())
    }
}
