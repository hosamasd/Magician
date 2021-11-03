//
//  HomeAccountGifts.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeAccountGifts: View {
    var body: some View {
        VStack {
            
            Text(LocalizedStringKey("Gifts"))
                .font(.system(size: 14))
                
                //                .font(.customFontSystem(size: 14))
                .fontWeight(.bold)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.vertical,8)
                .padding(.horizontal,24)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(ColorConstants.topRate)
                .overlay(
                    
                    
                    VStack(spacing:8){
                        
                        
                        
                        
                        Image("gift")
                        
                        Text(LocalizedStringKey("Get 50 % Off For Your Next Order"))
                            .font(.system(size: 20))
                            //                            .font(.customFontSystem(size: 20))
                            .fontWeight(.bold)
                        
                        Text(LocalizedStringKey("End in : 25/10/2021"))
                            .font(.customFontSystem(size: 12))
                            .fontWeight(.bold)
                            .foregroundColor(.black.opacity(0.6))
                    }
                    
                )
                .frame(width:getFrameSize().width-32,height: 120)
        }
        //        .background(ColorConstants.topRate)
        //        .cornerRadius(20)
    }
}

struct HomeAccountGifts_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccountGifts()
    }
}
