//
//  HomeCheckoutItemRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutItemRowView: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        HStack(spacing:16){
            
            Image(x.img)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(14)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("King Burgers")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                HStack(spacing:4) {
                    Image("Path 8560")
                    
                    
                    HStack {
                        Text("4.9")
                            .font(.system(size: 12))
                            
                            .foregroundColor(ColorConstants.mainColor)
                            //                                                    .offset(y:-4)
                            
                            +
                            
                            Text("(124 ratings)")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray.opacity(0.6))
                    }
                    
                    
                    .offset(y:-4)
                }
                
                Text("Burger     Western Food")
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray.opacity(0.6))
                
                Label(
                    title: {
                        
                        Text("No 03, 4th Lane, Newyork")
                            .font(.system(size: 13))
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray.opacity(0.6))
                    },
                    icon: {
                        Image("location-pin")
                        //                                .padding(.trailing,4)
                    }
                )
            })
            
            Spacer()
            
            VStack{
                
                Text("x2")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.mainColor)
                
                Text("110 EGP")
                    .font(.system(size:  12))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.mainColor)
                    .padding(8)
                    .background(ColorConstants.mainColor.opacity(0.1))
                    .clipShape(Capsule())
                
            }
        }
    }
}

struct HomeCheckoutItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
    }
}
