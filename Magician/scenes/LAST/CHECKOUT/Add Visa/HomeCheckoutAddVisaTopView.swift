//
//  HomeCheckoutAddVisaTopView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutAddVisaTopView: View {
    @ObservedObject var vm:HomeCheckoutViewModel

    var body: some View {
        VStack {
            
            VStack(alignment:.leading){
                
                Text("Delivery Address")
                    .font(.customFontSystem(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.vertical)
                
                HStack {
                    Text(vm.address)
                        .font(.customFontSystem(size: 16))
                        .fontWeight(.semibold)
                        .lineSpacing(6)
                    
                    Spacer()
                    
                    Button(action: {withAnimation{
                        vm.isChangeAddress.toggle()
                    }}, label: {
                        Text("Change")
                            .foregroundColor(Color("mains"))
                    })
                }
            }
            .padding(.vertical)
            
        }
        .background(Color.white)
    }
}

struct HomeCheckoutAddVisaTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())

//        HomeCheckoutAddVisaTopView()
    }
}
