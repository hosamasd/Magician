//
//  HomeCheckoutRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutRowView: View {
    var x = SS(name: "Beef Burger x1", price: "$14")
    
    var body: some View {
        VStack {
            
            HStack{
                
                Text(x.name)
                    .font(.customFontSystem(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.black.opacity(0.6))
                
                Spacer()
                
                Text(x.price)
                    .font(.boldCustomFontSystem(size: 14))
                    .fontWeight(.bold)
            }
            .padding(.vertical,8)
            
            Divider()
            
        }
    }
}

struct HomeCheckoutRowView_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
    }
}
