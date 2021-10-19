//
//  HomeCheckoutTopView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutTopView: View {
//    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @Binding var isShow:Bool
    var body: some View {
        HStack{
            
            HStack (spacing:16){
                Button(action: {withAnimation{
                    isShow.toggle()
                }}, label: {
    //                Image(systemName: vmm.getBackImage())
                    Image(systemName: "chevron.backward")
            })
                .foregroundColor(.black)
                
                Text("My Order")
                    .font(.boldCustomFontSystem(size: 27))
                    .fontWeight(.bold)
            }
            
            Spacer()
            
        }
        .padding(.top,getSafeArea()?.top)
        .padding(.horizontal,24)//16
    }
}

struct HomeCheckoutTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
    }
}
