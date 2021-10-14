//
//  HomeTopRating.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeTopRating: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @ObservedObject var vm : MainHomeTabViewModel
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Top Rating")
                    .foregroundColor(.black)
                    .font(.customFontSystem(size: 18))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{}}, label: {
                    Label(
                        title: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(Color("mains"))
                                .padding(.leading,-6)
                            
                        },
                        icon: {
                            Text("View All")
                                .font(.customFontSystem(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
                        }
                    )
                })
            }
            .padding(.horizontal)
            .padding(.top, 15)
            .padding(.bottom,4)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                HStack(spacing:8){
                    
//                    LazyVGrid(columns: columns,spacing: 12){
                        
                        ForEach(0..<vm.topRatingArray.count,id: \.self){index in

                            TopRatingRowView(vm: vm,x:vm.topRatingArray[index])
                            
                        }
                        
                   
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

struct HomeTopRating_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
