//
//  HomeAccountTopView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccountTopView: View {
//    @ObservedObject var vm:HomeAccountViewModel
    @EnvironmentObject var vm : HomeAccountViewModel

    var body: some View {
        VStack {
            HStack {
                
                Label(
                    title: { Text("Hello , Eslam")
                        .font(.system(size: 14))

//                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .padding(.leading,2)
                        
                    },
                    icon: { Image("Magician LOGO")
                        .resizable()
                        .frame(width: 45, height: 50)
                    }
                )
                
                Spacer()
                
                Label(
                    title: {
                        Text("Cairo, Egypt")
                            .font(.system(size: 14))

//                            .font(.system(size: 14))
                            .fontWeight(.regular)
                        
                    },
                    icon: {
                        Image("location")
                        //                        .resizable()
                        //                        .frame(width: 45, height: 50)
                    }
                )
//                .padding(.horizontal,16)
//                .frame(height:40)
                .frame(width:130,height:40)
                //                .padding(16)
                .background(ColorConstants.mainColor.opacity(0.10))
                .cornerRadius(10)
//                Image("Group 8179")
//                    .resizable()
//                    .frame(width:150,height:40)
//                    .overlay(
//
//                        Label(
//                            title: { Text("Cairo, Egypt")
//                                .font(.customFontSystem(size: 14))
//
////                                .font(.system(size: 14))
//                                .fontWeight(.regular)
//                                .padding(.horizontal,16)
//
//                            },
//                            icon: { Image("location")
//                                .padding(.leading)
//                                //                            .resizable()
//                                //                            .frame(width: 45, height: 50)
//                            }
//                        )
//
//                    )
                
            }
            
         
            //    .frame(width:getFrameSize().width-8)
            //            }
            //            .background()
            
        }
        
        .padding(.top,getSafeArea()?.top)
        .padding(.horizontal,16)
        //        .padding(.top)
        
    }
}

struct HomeAccountTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
