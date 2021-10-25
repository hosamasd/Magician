//
//  HomeFilterRowView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeFilterRowView: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        VStack(alignment:.leading,spacing:12){
            
            Image(x.img)
                .resizable()
//                .aspectRatio(contentMode: .fill)
                .frame( height: 190)
                .cornerRadius(20)
                
                    
            
            HStack (spacing:12){
                
                Image( x.subImg)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .padding(8)
                    .modifier(viewModifiers())
                
//                Image("1-3")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 50, height: 50)
//                    .overlay(
//                        Image( x.subImg)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 30, height: 30)
//                    )
                
                VStack (alignment:.leading,spacing:8){
                Text(x.name)
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                //                                .padding(.leading,-4)
                Text(x.type)
                    .font(.system(size: 8))
                    .foregroundColor(Color.black.opacity(0.8))

//                            .fore
                }
            }
          
            
        }
        .padding(.horizontal,8)
        .padding(.vertical,8)
        
        .background(
            RoundedRectangle(
                cornerRadius: 10
            )
            .foregroundColor(Color("topRate"))
            .shadow(
                color: Color.gray.opacity(0.6),
                radius: 2.5,
                x: 0,
                y: 2
            )
        )
        
//        .background(Color("topRate"))
//        .cornerRadius(12)
//        .cornerRadius(12)

//        .modifier(viewModifiers())
//        .padding(.bottom)
//        .padding(.bottom,-16)//-4
    }
}

struct HomeFilterRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterRowView()
//        HomeFilter()
//        HomeFilterRowView()
    }
}
