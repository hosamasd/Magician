//
//  HomeSpecialOffer.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeSpecialOffer: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @ObservedObject var vm : MainHomeTabViewModel
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Special Offers")
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
                
                HStack(spacing:12){
                    
                    
//                    LazyHGrid(rows: columns,spacing: 12){
                        ForEach(vm.specialOffersArray){gradient in
                            
                            SpecialOfferRowView(vm: vm,x:gradient)
                        }
//                    }
//                    .padding(.vertical)
                    
                }
                .padding(.horizontal,16)
            }
            .padding(.top,-16)

//            .padding(.vertical)
        }
    }
}

struct HomeSpecialOsffer_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
