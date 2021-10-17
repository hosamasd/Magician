//
//  FavoriteRowView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct FavoriteRowView: View {
    @EnvironmentObject var vm:HomeFavoriteViewModel

    var x =                 OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true)

    var body: some View {
        VStack{
            
            Image(x.img)
                .resizable()
                //                .aspectRatio(contentMode: .fit)
                .frame( height: 130)
                
                //                .cornerRadius(12)
                .overlay(
                    
                    Label(
                        title: { Text(x.rating)
                            .font(.customFontSystem(size: 10))
                            .foregroundColor(.black)
                            .padding(.leading,-4)
                        },
                        icon: { Image( "Icon awesome-star") }
                    )
                    .padding(.horizontal,6)
                    .padding(.vertical,8)
                    .background(Color.white)
                    .clipShape(Capsule())
                    .offset(x: 10.0, y: 10)
                    
                    ,alignment:.topLeading)
                .cornerRadius(19)
            
            
            ZStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    //                VStack {
                    HStack {
                        Text(x.name)
                            .font(.customFontSystem(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                        
                        Spacer()
                        
                        Text("50% OFF")
                            .font(.customFontSystem(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                            .padding(.horizontal)
                            .padding(.vertical,6)
                            .background(Color("mains").opacity(0.22))
                            .clipShape(Capsule())
                    }
                    
                    
                    Text("Chicken skewers with slices of sweet peppers and dill")
                        .font(.customFontSystem(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(.top,4)
                    
                    //                }
                    //                .padding(.ver)
                    
                    HStack(spacing:24){
                        
                        Label(
                            title: { Text("Cairo, Egypt") },
                            icon: { Image("pin") }
                        )
                        
                        Label(
                            title: { Text("20 min") },
                            icon: { Image("XMLID_1031_") }
                        )
                        
                        Label(
                            title: { Text("10 EGP") },
                            icon: { Image("delivery") }
                        )
                        
                        Spacer()
                    }
                    .foregroundColor(Color.black.opacity(0.6))
                    
                    
                    
                })
                .padding(.horizontal)
                .padding(.bottom,24)
                .opacity(vm.isSingleItemLists==1 ? 1 : 0)
                
                if self.vm.isSingleItemLists==2 {
                    
                    VStack(alignment: .leading, spacing: 12, content: {
                        //                VStack {
                        Text(x.name)
                            .font(.customFontSystem(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                        
                        Text("Chicken skewers with slices of sweet peppers and dill")
                            .font(.customFontSystem(size: 12))
                            .fontWeight(.regular)
                            .lineLimit(2)
                            .foregroundColor(Color.black.opacity(0.6))
                            .padding(.top,4)
                        
                        
                        HStack(){
                            
                            Label(
                                title: { Text("Cairo, Egypt")
                                    .font(.customFontSystem(size: 10))
                                    
                                },
                                icon: { Image("pin") }
                            )
                            
                            Spacer()

                            Text("50% OFF")
                                .font(.customFontSystem(size: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("mains"))
                                .padding(.horizontal)
                                .padding(.vertical,6)
                                .background(Color("mains").opacity(0.22))
                                .clipShape(Capsule())
                            
                            
                            
                        }
                        
                        HStack(){
                            Label(
                                title: { Text("20 min")
                                    .font(.customFontSystem(size: 10))
                                },
                                icon: { Image("XMLID_1031_") }
                            )
                            
                            Spacer()
                            
                            Label(
                                title: { Text("10 EGP")
                                    .font(.customFontSystem(size: 10))
                                    
                                },
                                icon: { Image("delivery") }
                            )
                            
                        }
                    })
                    .padding(.horizontal,12)
//                    .background(Color.red)
//                    .offset(y:-60)
                    
                }
            }
        }
        //        .padding(.bottom,12)
        .background(Color.white)
        .cornerRadius(20)
        .modifier(viewModifiers())
        .frame(height:vm.isSingleItemLists==1 ? 250 : 300)
    }
}

struct FavoriteRowView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRowView()
    }
}
