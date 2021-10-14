//
//  SpecialOfferRowView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct SpecialOfferRowView: View {
    @ObservedObject var vm:MainHomeTabViewModel
    var x =  OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    var body: some View {
        
        HStack {
            
            Image(x.img)
                .resizable()
                .aspectRatio(contentMode: .fill)
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
            
            //            VStack {
            //
            VStack(alignment:.leading) {
                
                Label(
                    title: {
                        VStack (alignment:.leading){
                            HStack {
                                Text(x.name)
                                    .font(.customFontSystem(size: 10))
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                
                                Text(x.offersRange)
                                    .font(.customFontSystem(size: 10))
                                    .fontWeight(.regular)
                                    
                                    .foregroundColor(Color("mains").opacity(0.8))
                                //                                        .padding(.top,4)
                            }
                            //                                .padding(.leading,-4)
                            Text(x.type)
                                .font(.customFontSystem(size: 8))
                                .foregroundColor(.black.opacity(0.8))
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
                .padding(.leading,-4)
                
//                Text("chickens stevers")
                
                Spacer()
                
                //
                HStack {
                    Label(
                        title: {
                            Text(x.location)
                                .font(.customFontSystem(size: 10))
                                .foregroundColor(.gray.opacity(0.8))
                        },
                        icon: { Image( "pin") }
                    )
                    .padding(.horizontal,8)
                    
                    Label(
                        title: {
                            Text("55EGP")
                                
                                .font(.customFontSystem(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(.green.opacity(1))
                        },
                        icon: {
                            Text("75EGP")
                                .font(.customFontSystem(size: 8))
                                
                                .fontWeight(.regular)
                                .foregroundColor(Color("mains").opacity(0.6))//.opacity(1))
                                .overlay(
                                    Rectangle()
                                        .fill(Color("mains"))
                                        .frame(height: 1).offset(y: 0)
                                    , alignment: .center)
                        }
                    )
                    
                }
                
                
                
                
            }
            
        }
        //        .frame(height:200)
        //        .padding(8)
        .padding(.horizontal,8)
        .padding(.vertical,8)
        
        .background(Color.white)
        .frame(width:getFrameSize().width-64,height:220)
        
        .cornerRadius(12)
        .modifier(viewModifiers())
        .padding(.vertical)
        
    }
}

struct SpecialOfferRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
