//
//  SelectedOrderRowView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct SelectedOrderRowView: View {
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    var x = OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021")
    
    var body: some View {
        HStack {
            
            Image(x.img)
                .resizable()
                //                .aspectRatio(contentMode: .fill)
                .frame(width: 75,height: 75)//, h
            
            VStack(alignment:.leading) {
                
              
                HStack(spacing:12) {
                    
                    VStack (alignment:.leading){
                                    
                                    Label(
                                        title: {  Text("x2")
                                            .font(.customFontSystem(size: 18))
                                            .fontWeight(.bold)
                                            
                                            .foregroundColor(Color("mains")) },
                                        icon: { Text(x.name)
                                            .font(.customFontSystem(size: 10))
                                            .fontWeight(.regular)
                                            .foregroundColor(.black)
                                            .padding(.trailing,4)
                                        }
                                    )
                                    
                                   
                                            
                                            HStack(spacing:4) {
                                                Image("Path 8560")
                                                  
                                                
                                                HStack {
                                                    Text("4.9")
                                                        .font(.customFontSystem(size: 9))

                                                        .foregroundColor(Color("mains"))
    //                                                    .offset(y:-4)

                                                        +
                                                        
                                                        Text("(124 ratings)")
                                                            .font(.customFontSystem(size: 9))
                                                        .foregroundColor(Color.gray.opacity(0.6))
                                                }

                                                    
                                                    .offset(y:-4)
                                            }
                        
                        Text("Burger     Western Food")
                            .font(.customFontSystem(size: 10))
                            .foregroundColor(Color.gray.opacity(0.6))
                                        
                        Label(
                            title: {
                                
                                Text("No 03, 4th Lane, Newyork")
                                .font(.customFontSystem(size: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray.opacity(0.6))
                               },
                            icon: {
                               Image("location-pin")
//                                .padding(.trailing,4)
                            }
                        )
                                    
                        
                               
//                                    .padding(.top,4)
                    }
                    
                    VStack {
                        
                        Image("stopwatch")
                        
                        Text("30:00 min")
                            .font(.customFontSystem(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))

                        Text("Reminding ")
                            .font(.customFontSystem(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.6))
                    }
                    
                }
//                        .offset(x:-4,y:-10)
                   
                
                
            }
        }
    }
}

struct SelectedOrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedOrderRowView()
    }
}
