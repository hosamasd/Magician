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
                            .font(.system(size: 10))
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
                .cornerRadius(19)
            
            Label(
                title: {
                    VStack (alignment:.leading,spacing:8){
                        Text(x.name)
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        //                                .padding(.leading,-4)
                        Text(x.type)
                            .font(.system(size: 12))
                            .foregroundColor(Color.black.opacity(0.6))

//                            .foregroundColor(.gray.opacity(0.8))
//                            .padding(.top,4)
                            
                        Spacer()
                    }
                    .offset(x:-4,y:-10)
                    .padding(.leading,4)
                },
                icon: {
                    Image( x.subImg)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .padding(6)
                        .modifier(viewModifiers())
//                        .padding(.trailing)
//                    Image("1-3")
//                        .overlay(
//                            Image( x.subImg)
//                        )
                }
            )
            .padding(.top,12)
            .frame(height:50)
            //
            HStack {
                Label(
                    title: {
                        Text(x.location)
                            .font(.system(size: 10))
                            .foregroundColor(Color.black.opacity(0.6))

    //                        .foregroundColor(.gray.opacity(0.8))
                    },
                    icon: { Image( "pin") }
                )
                
                Spacer()
               
            }
            .padding(.horizontal,8)
            .padding(.bottom,4)
            
        }
        
        .padding(.horizontal,6)
        .padding(.vertical,6)
        
        .background(
            RoundedRectangle(
                cornerRadius: 19
            )
            .foregroundColor(ColorConstants.topRate)
            .shadow(
                color: Color.gray.opacity(0.6),
                radius: 2.5,
                x: 0,
                y: 2
            )
        )
        
//        .padding(.horizontal,8)
//        .padding(.vertical,8)
//        .background(ColorConstants.topRate)
//        .cornerRadius(12)
////        .cornerRadius(12)
//
//        .modifier(viewModifiers())
//        .padding(.vertical)
//        .padding(.bottom,-16)//-4

//        .frame(height:320)
//        .background(Color.red)
        
       
//        .padding(.vertical)
    }
}

struct STopRatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        STopRatingRowView(vm: MainHomeTabViewModel())
//        MainHomeTab()
    }
}
