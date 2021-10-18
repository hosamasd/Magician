//
//  SelectedItemScenes.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SelectedItemScenes: View {
    @StateObject var vm = HomeFavoriteViewModel()
    
    var body: some View {
        VStack {

            Image("sfa")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:getFrameSize().width,height:getFrameSize().height/3)
                .overlay(
                
                    Button(action: {withAnimation{
                        
                    }}, label: {
//                        Image(systemName:vmm.getBackImage() )
                        HStack {
                            
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color("mains"))
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        
                            Spacer()
                        }
                        .padding(.top,getSafeArea()?.top)
                        .padding(.horizontal,16)
                    })
                    ,alignment: .top)
                .cornerRadius(10)
            
            SelectedItemScenesTopRow()
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.all)

    }
}

struct SelectedItemScenes_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes()
    }
}
