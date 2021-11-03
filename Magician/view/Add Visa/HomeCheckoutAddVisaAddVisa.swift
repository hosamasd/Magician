//
//  HomeCheckoutAddVisaAddVisa.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutAddVisaAddVisa: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Payment method")
                    .foregroundColor(.gray.opacity(0.8))
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    vm.isAddVisaSheet.toggle()
                }}, label: {
                    Label(
                        title: { Text("Add Cards")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.mainColor)
                        },
                        icon: { Image( "Group 8358") }
                    )
                })
                
            }
            .padding(.vertical)
            
            
            //            ScrollView(.horizontal, showsIndicators: false) {
            //
            //                HStack(spacing:12){
            //
            //
            //                    //                    LazyHGrid(rows: columns,spacing: 12){
            //                    ForEach(vm.topRatingArray){gradient in
            //
            //                        STopRatingRowView(vm: vm, x: gradient)
            //                    }
            //                    //                    }
            //
            //                }
            //                .padding(.horizontal,16)
            //            }
            //            .padding(.top,-16)
        }
    }
}

struct HomeCheckoutAddVisaAddVisa_Previews: PreviewProvider {
    static var previews: some View {
        SHomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
        
        //        HomeCheckoutAddVisaAddVisa()
    }
}
