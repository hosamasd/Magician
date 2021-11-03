//
//  HomeTrackOrderRowView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeTrackOrdersRowView: View {
    var x =         OfferModel(name: "Nobile Houses", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var isDelvery = false
    var isTotal = false
    
    
    var body: some View {
        VStack {
            
            HStack{
                
                Text(LocalizedStringKey(isDelvery ? "Delivery Cost" :  isTotal ? "Total" :x.name))
                    .font(.system(size: isTotal ? 18 : 15))
                    
                    //                    .font(.customFontSystem(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.black.opacity(isTotal ? 1 : 0.6))
                
                Spacer()
                
                Text(isDelvery ? "$2" : isTotal ? "$45" : "$16")
                    .font(.system(size: isTotal ? 18 : 14))
                    //                    .font(.boldCustomFontSystem(size: isTotal ? 18 : 14))
                    .fontWeight(.bold)
                    .foregroundColor(isTotal ? ColorConstants.mainColor : .black)
            }
            .padding(.vertical,8)
            
            if isTotal {
                Spacer()
                
            }
            else {
                Divider()
                    .background(isDelvery ? ColorConstants.mainColor.opacity(1)  :  .gray)
                
            }
            
            
        }
        .padding(.horizontal,48)
    }
}

struct HomeTrackOrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
        //        HomeTrackOrderRowView()
    }
}
