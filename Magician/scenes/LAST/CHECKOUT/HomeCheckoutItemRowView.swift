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
                    .font(.boldCustomFontSystem(size: 16))
                    .fontWeight(.bold)
                
                HStack(spacing:4) {
                    Image("Path 8560")
                    
                    
                    HStack {
                        Text("4.9")
                            .font(.customFontSystem(size: 12))
                            
                            .foregroundColor(Color("mains"))
                            //                                                    .offset(y:-4)
                            
                            +
                            
                            Text("(124 ratings)")
                            .font(.customFontSystem(size: 13))
                            .foregroundColor(Color.gray.opacity(0.6))
                    }
                    
                    
                    .offset(y:-4)
                }
                
                Text("Burger     Western Food")
                    .font(.customFontSystem(size: 13))
                    .foregroundColor(Color.gray.opacity(0.6))
                
                Label(
                    title: {
                        
                        Text("No 03, 4th Lane, Newyork")
                            .font(.customFontSystem(size: 13))
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
                    .font(.boldCustomFontSystem(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("mains"))
                
                Text("110 EGP")
                    .font(.customFontSystem(size:  12))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("mains"))
                    .padding(8)
                    .background(Color("mains").opacity(0.1))
                    .clipShape(Capsule())
                
            }
        }
    }
}

struct HomeCheckoutItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
    }
}
