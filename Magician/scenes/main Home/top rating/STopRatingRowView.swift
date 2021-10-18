//
//  STopRatingRowView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct STopRatingRowView: View {
    @ObservedObject var vm:MainHomeTabViewModel
    var x =  OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        VStack{
            
            Image(x.img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200)
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
                .cornerRadius(10)
            
            Label(
                title: {
                    VStack (alignment:.leading){
                        Text(x.name)
                            .font(.customFontSystem(size: 14))
                            .foregroundColor(.black)
                        //                                .padding(.leading,-4)
                        Text(x.type)
                            .font(.customFontSystem(size: 12))
                            .foregroundColor(Color.black.opacity(0.6))

//                            .foregroundColor(.gray.opacity(0.8))
                            .padding(.top,4)
                    }
                    .offset(x:-4,y:-10)
                },
                icon: {
                    
                    Image("1-3")
                        .overlay(
                            Image( x.subImg)
                        )
                }
            )
            //
            Label(
                title: {
                    Text(x.location)
                        .font(.customFontSystem(size: 10))
                        .foregroundColor(Color.black.opacity(0.6))

//                        .foregroundColor(.gray.opacity(0.8))
                },
                icon: { Image( "pin") }
            )
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal,8)
            .padding(.bottom,4)
            
        }
        .padding(.horizontal,8)
        .padding(.vertical,8)
        .background(Color("topRate"))
        .cornerRadius(12)
//        .cornerRadius(12)

        .modifier(viewModifiers())
        .padding(.vertical)
        .padding(.bottom,-16)//-4

//        .frame(height:320)
//        .background(Color.red)
        
       
//        .padding(.vertical)
    }
}

struct STopRatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
