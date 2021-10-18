//
//  SelectedItemScenesTopRow.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SelectedItemScenesTopRow: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        HStack  {
            
            Image("1-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 70)
                .overlay(
                    Image( x.subImg)
                )
            
            VStack {
                
                HStack {
                    
                    
                    HStack(spacing:24) {
                        VStack (alignment:.leading){
                            
                            Text(x.name)
                                .font(.customFontSystem(size: 16))
                                .foregroundColor(.black)
                            
                            //                                .padding(.leading,-4)
                            Text(x.type)
                                .font(.customFontSystem(size: 12))
                                .foregroundColor(Color.black.opacity(0.6))
                                
                                //                            .foregroundColor(.gray.opacity(0.8))
                                .padding(.top,-4)
                            
                        }
                   
                    
//                    Spacer()
                    
                    Label(
                        title: { Text("4.5")
                            .font(.customFontSystem(size: 9))
                            .foregroundColor(.white)
                            
                        },
                        icon: { Image("Icon awesome-star") }
                    )
                    .padding(.horizontal,4)
                    .padding(.vertical,8)
                    .background(Color("mains"))
                    .clipShape(Capsule())
                    
                    }
                    
                    Spacer()
                    
                    Button(action: {withAnimation{
                        
                    }}, label: {
                        Label(
                            title: {
                                Image("Icon metro-question")
                            },
                            icon: {
                                Text("Info")
                            }
                        )
                    })
                    .font(.customFontSystem(size: 16))
                    .foregroundColor(Color("mains"))
                    
                    
                }
                //                .offset(x:-4,y:-20)
                
                HStack{
                    
                    Label(
                        title: { Text("10 EGP")
                            .font(.customFontSystem(size: 10))
                            
                        },
                        icon: { Image("delivery") }
                    )
                    
                    Spacer()
                    
                    Label(
                        title: { Text("20 min") },
                        icon: { Image("XMLID_1031_") }
                    )
                    .font(.system(size: 10))
                    
                    Spacer()
                    
                    Label(
                        title: { Text("Cairo, Egypt") },
                        icon: { Image("pin") }
                    )
                    .font(.customFontSystem(size: 10))

                    
                }
                
            }
        }
        .padding()
//        .padding(.horizontal)
    }
}

struct SelectedItemScenesTopRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes()
        //        SelectedItemScenesTopRow()
    }
}
