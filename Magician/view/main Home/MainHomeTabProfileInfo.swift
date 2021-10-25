//
//  MainHomeTabProfileInfo.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainHomeTabProfileInfo: View {
    
    @ObservedObject var vm:MainHomeTabViewModel
    
    var body: some View {
        VStack{
            
            Label(
                title: {
                    Text("Order")
                        .fontWeight(.bold)
                        .foregroundColor(Color("mains"))
                },
                icon: {
                    Text( "Start Your")
                        .fontWeight(.bold)
                    
                }
            )
            .font(.system(size: 20))
            
            
            Label(
                title: {
                    Label(
                        title: {
                            Image("prize-1")
                                .font(.system(size: 20))
                        },
                        icon: {
                            Text("Prize")
                                .fontWeight(.bold)
                                .foregroundColor(Color("hprize"))
                            
                        }
                    )
                    .padding(.horizontal,-8)
                    .font(.system(size: 12))

                    
                },
                icon: {
                    Text( "And Win The ")
                        .fontWeight(.bold)
                    
                }
            )
            .font(.system(size: 12))
            
            MainHomeTaPointsView(vm: vm)
        }
    }
}

struct MainHomeTabProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
