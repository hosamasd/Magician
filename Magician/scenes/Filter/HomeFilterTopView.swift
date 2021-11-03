//
//  HomeFilterTopView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeFilterTopView: View {
    //    @ObservedObject var vm:HomeAccountViewModel
    
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
                    }
                )
                .frame(width:130,height:40)
                //                .padding(16)
                .background(ColorConstants.mainColor.opacity(0.10))
                .cornerRadius(10)
                
            }
        }
        
        .padding(.top,getSafeArea()?.top)
        .padding(.horizontal,16)
    }
}

struct HomeFilterTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterTopView()
    }
}
