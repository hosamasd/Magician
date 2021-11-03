//
//  SelectedItemScenesBottomScroll.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemScenesBottomScroll: View {
    @StateObject var vm = HomeFavoriteViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    @Binding var isShow:Bool
    @Binding var selected:OfferModel
    @Binding var isMakeCheckout:Bool

    var body: some View {
        VStack (alignment:.leading){
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                HStack(spacing:14){
                    
                    //                    LazyVGrid(columns: columns,spacing: 12){
                    
                    ForEach(vm.selectedMainCategoryArray,id:\.self){index in
                        
                        SelectedItemSceneRowView(x:index,selected: $vm.selectedMenu)
                        //                    CategoryRowView(x: vm.categoryArray[index], vm: vm)
                        //                            TopRatingRowView(vm: vm,x:vm.topRatingArray[index])
                        
                    }
                    
                    
                    
                }
            }
            .padding(.vertical)
            .padding(.bottom,4)
            
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment:.leading){
                        HStack {
                            Text(vm.selectedMenu)
                            
                            Spacer()
                            
                        }
                        
                        LazyVGrid(columns: columns,spacing:12){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.favoriteArray){gradient in // vm.getDatas()
                                SelectedItemScenesBottomRowView(x:gradient)
                                    .onTapGesture {
                                        withAnimation{
                                            
                                            selected=gradient
                                            isShow.toggle()
                                        }
                                    }
                                //                            HomeFilterRowView(x:gradient)
                                //                                    GradientView(columns: $columns, gradient: gradient, vm: vm)
                            }
                        }
                        //                    .padding(.horizontal)
                        .padding(.bottom)
                        
                    }
                }
                
                Button(action: {withAnimation{
                    isMakeCheckout.toggle()
                }}, label: {
                    Image("Group 8333")
//                        .overlay(
//                            
//                            Circle()
//                                .fill(ColorConstants.mainColor)
//                                .frame(width: 25, height: 25)
//                                .overlay(
//                                    
//                                    Text("1")
//                                        .foregroundColor(.white)
//                                )
//                                .offset(x:20,y:5)
//                            ,alignment: .top)
                })
                .offset(x:10)
            }
        }
        .padding(.horizontal)
      
    }
}

struct SelectedItemScenesBottomScroll_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes(isShow: .constant(false))
    }
}
