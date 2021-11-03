//
//  SelectedItemScenesBottomRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemScenesBottomRowView: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        HStack(spacing:12) {
            
            Image(x.img)
                .resizable()
                .frame(height:155)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 8, content: {
                VStack(alignment: .leading){
                    
                    Text("Chicken Skewers")
                        .font(.system(size: 20))
                        
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                    
                    Text("Chicken skewers with slices of \nsweet peppers and dill")
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.6))
                        .lineLimit(3)
                }
                
                Text("Get 30 EXP")
                    .font(.system(size:  12))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.mainColor)
                    .padding(.horizontal ,  12 )
                    .padding(.vertical, 6 )
                    .background(ColorConstants.mainColor.opacity(0.1))
                    .clipShape(Capsule())
                
                HStack {
                    Spacer()
                    
                    Text("50 % OFF")
                        .font(.system(size:  15))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.mainColor)
                }
                
                HStack{
                    
                    Text("110 EGP")
                        .font(.system(size:  15))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.mainColor)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 2)
                                .fill(ColorConstants.mainColor.opacity(0.6))
                                .frame(height:1)
                            
                        )
                    
                    Spacer()
                    
                    Text("55 EGP")
                        .font(.system(size: 24))
                        
                        //                    .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.oprice)
                    
                    
                }
            })
            
        }
        .padding(8)
        .background(
            RoundedRectangle(
                cornerRadius: 19
            )
            .foregroundColor(Color.white)
            .shadow(
                color: Color.gray.opacity(0.6),
                radius: 2.5,
                x: 0,
                y: 2
            )
        )
    }
}

struct SelectedItemScenesBottomRowView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes(isShow: .constant(false))
    }
}
