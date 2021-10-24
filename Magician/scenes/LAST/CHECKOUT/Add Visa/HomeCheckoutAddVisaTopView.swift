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
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.8))

//                    .foregroundColor(.gray.opacity(0.6))
                    .padding(.vertical)
                
                HStack {
                    Text(vm.address)
                        .font(.system(size: 16))
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
//        .background(Color.white)
    }
}

struct HomeCheckoutAddVisaTopView_Previews: PreviewProvider {
    static var previews: some View {
        SHomeCheckoutAddVisa(vm: HomeCheckoutViewModel())

//        HomeCheckoutAddVisaTopView()
    }
}
