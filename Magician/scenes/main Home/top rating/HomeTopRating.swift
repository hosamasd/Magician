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

    @Binding var isShow:Bool
    @State var isSelectItem=false
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
                    isShow=true
                    
                    vm.selectedCategoryOffAll="Top Rating"
//                    vm.isSelectedCategoryOffAll.toggle()
                }
                }, label: {
                    Label(
                        title: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(Color("mains"))
                                .padding(.leading,-6)
                            
                        },
                        icon: {
                            Text("View All")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
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
    }
}

struct HomeTopRating_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
