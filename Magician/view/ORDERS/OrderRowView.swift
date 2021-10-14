//
//  OrderRowView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct OrderRowView: View {
    var x =         OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021")
    
    var body: some View {
        HStack(spacing:16) {
            
            Image(x.img)
                .resizable()
                .frame(width:140, height: 140)
            
            VStack(alignment: .leading, content: {
                
                Text(x.name)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("mains"))
//                    .padding(.top,16)
//                    .offset(y:8)
                
                Text(x.desc)
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.black.opacity(0.6))
                    
                    .padding(.bottom,4)
                
                Text(x.price)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color("oprice"))//.opacity(0.6))
                
                HStack{
                    Text(x.date)
                        .font(.system(size: 11))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.8))
                    
                    Spacer()
                    
                    Button(action: {withAnimation{}}, label: {
                        
                        ZStack {
                            Text("Track My Order")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
                                .opacity(x.isOrdered ? 0 : 1)
                            
                            Label(
                                title: {
                                    Image("Icon open-reload")
                                },
                                icon: {
                                    Text("Reorder")
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                        .padding(.trailing,-8)
                                        .foregroundColor(.black.opacity(0.4))
                                }
                            )
                            .transition(.move(edge: .trailing))
                            .opacity(!x.isOrdered ? 0 : 1)
                            
                        }
                    })
                    
                }
            })
            .padding(.top,21)
            
        }
        
        .padding(8)
        .background(Color.white)
        .cornerRadius(20)
        .modifier(viewModifiers())
//        .padding(.leading,-8)
//        .padding(.horizontal)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeOrders()
        //        ContentView()
        //        OrderRowView()
    }
}
