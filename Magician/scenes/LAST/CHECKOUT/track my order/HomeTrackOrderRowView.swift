//
//  HomeTrackOrderRowView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeTrackOrderRowView: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    var x = OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021")
    
    var body: some View {
        VStack {
            HStack() {
                
                Image(x.img)
                    .resizable()
                    //                .aspectRatio(contentMode: .fill)
                    .frame(width: 75,height: 80)//, h
                    .cornerRadius(19)
                
            VStack(alignment:.leading) {
                
                
                HStack(spacing:12) {
                    
                    VStack (alignment:.leading,spacing:4){
                        
                        Label(
                            title: {  Text("x2")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                
                                .foregroundColor(Color("mains")) },
                            icon: { Text(x.name)
                                .font(.system(size: isSmallDevice() ? 12 : 14))
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .padding(.trailing,4)
                            }
                        )
                        
                        
                        
                        HStack(spacing:4) {
                            Image("Path 8560")
                            
                            
                            HStack {
                                Text("4.9")
                                    .font(.system(size: 9))
                                    
                                    .foregroundColor(Color("mains"))
                                    //                                                    .offset(y:-4)
                                    
                                    +
                                    
                                    Text("(124 ratings)")
                                    .font(.system(size: 9))
                                    .foregroundColor(Color.gray.opacity(0.6))
                            }
                            
                            
                            .offset(y:-4)
                        }
                        
                        Text("Burger     Western Food")
                            .font(.system(size: 10))
                            .foregroundColor(Color.gray.opacity(0.6))
                        
                        Label(
                            title: {
                                
                                Text("No 03, 4th Lane, Newyork")
                                    .font(.system(size: 10))
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
                    
                    
//                    Spacer()
                    
                    
                    VStack {
                        
                        Image("stopwatch")
                        
                        Text("30:00 min")
                            .font(.system(size: isSmallDevice() ? 16 : 20))
    //                        .font(.boldsystem(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                        
                        Text(LocalizedStringKey("Reminding "))
                            .font(.system(size:isSmallDevice() ? 12 : 16))

    //                        .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.8))
                            .padding(.leading,8)
                    }
                    
                }
                //                        .offset(x:-4,y:-10)
                
                
                
            }
            .padding(.leading,isSmallDevice() ? 4 : 8)
            
        }
            .frame(height:85)

            Text("Get 60 EXP")
                .font(.system(size:  12))
                .fontWeight(.bold)
                .foregroundColor(Color("mains"))
                .padding(.horizontal ,  12 )
                .padding(.vertical, 6 )
                .background(Color("mains").opacity(0.1))
                .clipShape(Capsule())
                .padding(.vertical)
                
          
        }
        .padding(.horizontal, 8)//24 )3

        .background(Color("bg"))
        .padding(.top,30)
    }
}

struct HomeTrackOrdersRowView_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
    }
}
