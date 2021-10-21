//
//  SecondHomeSelectedCategoryTopView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct SecondHomeSelectedCategoryTopView: View {
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @Binding var columns:[GridItem]
    
    //    @StateObject var vm = MainHomeTabViewModel()
    //    @StateObject var vmm = HomeMainTabBarViewModel()
    //    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @Binding var isShow:Bool
    var x = MainCategory(name: "", img: "", nameAr: "", subImage: "", mainImg: "")
    @Binding var isShowFilter:Bool

    
    var body: some View {
        HStack {
            
            //            Button(action: {withAnimation{
            //                vm.isSingleItemLists=1
            //                vm.isSelectedCategoryOffAll.toggle()
            //            }}, label: {
            //
            //
            //                Label(
            //                    title: {
            //
            //
            //
            //                        Text(LocalizedStringKey(vm.selectedCategoryOffAll))
            //                            .font(.customFontSystem(size: 27))
            //                            .fontWeight(.bold)
            //                        //                            .padding(.horizontal)
            //                    },
            //                    icon: {
            //
            //                        Image(systemName: vmm.getBackImage())
            //                            .foregroundColor(Color("mains"))
            //
            //                    }
            //                )
            //                .foregroundColor(.black)
            //
            //            })
            
            
            HStack() {
                Button(action: {withAnimation{
                    vm.isMainCategoryChosen=false
                    isShow.toggle()
                    //                    vm.isSingleItemLists=1
                    //                    vm.isSelectedCategoryOffAll.toggle()
                    //                    vm.isMainCategoryChosen=false
                }}, label: {
                    Image(systemName: vmm.getBackImage())
                        .foregroundColor(Color("mains"))
                }  )
                
                ZStack {
//                    Text(LocalizedStringKey(vmm.isArabicLanguage ? x.nameAr : x.name))
                        
                                            Text(LocalizedStringKey(vm.selectedCategoryOffAll))
                        .font(.system(size: 17))

//                        .font(.customFontSystem(size: 27))
                        .fontWeight(.bold)
                        .opacity(vm.isMainCategoryChosen ? 0 : 1)
//                                                .frame(width:.infinity,alignment: .leading)
                    
                    if vm.isMainCategoryChosen {
                        HStack {
                            Label(
                                title: {
                                    
                                    
                                    Text(LocalizedStringKey(vmm.isArabicLanguage ? x.nameAr : x.name))

    //                                Text(LocalizedStringKey(vm.selectedCategoryOffAll))
                                        .font(.system(size: 17))
    //                                    .font(.customFontSystem(size: 17))
                                        .fontWeight(.bold)
                                    //                            .padding(.horizontal)
                                },
                                icon: {
                                    Image(x.subImage)

    //                                Image(vm.mainCategoryChosenName)
                                        .resizable()
                                        .frame(width: 14, height: 14)
                                    
                                }
                            )
                            .foregroundColor(.black)
                            
                            Spacer()
                        }
                        //                        .padding(.leading,-8)
                    }
                }
//                .frame(width:80)
//                .padding(.leading,vm.isMainCategoryChosen ?  -8 : 0)
                
                
            }
            
            Spacer()
            
            ZStack {
                Spacer()
                
                if vm.isMainCategoryChosen {
                    
                    //                    Spacer()
                    
//                    HStack(spacing:isSmallDevice() ? 16 : 32) {
                        //                        Spacer()
                    HStack{
                        
                        Image("Line 125")
//                            .padding(.trailing,24)
                        
                        //                    Spacer()
                        
                        Button(action: {withAnimation{
                            isShowFilter.toggle()
                        }}, label: {
                            Label(
                                title: { Text("Filter") },
                                icon: { Image( "list-1") }
                            )
                        })
                        .foregroundColor(.black)
                        .padding(.horizontal,isSmallDevice() ? 12 :  24)
                        
                        //                    Spacer()
                        
                        //                    RoundedRectangle(cornerRadius: 2)
                        //                        .fill(Color.gray.opacity(0.4))
                        //                        .frame(width: 10, height: 10)
                        
                        
                        Image("Line 125")
//                            .padding(.leading,24)

                        
                                                Spacer()
                    }
                    //                    .background(Color.red)
                    
                    //                    Spacer()
                }
                
            }
            
            Spacer()
            
            HStack(spacing:6) {
                Button(action: {withAnimation{
                    
                    vm.isSingleItemLists=2
                    columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
                }}, label: {
                    Image(vm.isSingleItemLists==2 ? "list" : "list-1")
                })
                
                
                Button(action: {withAnimation{vm.isSingleItemLists=1
                    
                    columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
                    
                }}, label: {
                    Image(vm.isSingleItemLists==1 ? "computer-1" : "computer")
                })
            }
        }
        .padding(.horizontal)
    }
}

struct SecondHomeSelectedCategoryTopView_Previews: PreviewProvider {
    @StateObject var vm = MainHomeTabViewModel()
    @StateObject var vms = HomeMainTabBarViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    
    static var previews: some View {
        //        SecondHomeSelectedCategoryTopView()
        //        SecondHomeSelectedCategoryTopView(columns: $columns)
        //            .environmentObject(vm)
        //            .environmentObject(vms)
        ContentView()
    }
}
