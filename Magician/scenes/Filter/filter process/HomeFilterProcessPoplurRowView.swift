//
//  HomeFilterProcessPoplurRowView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeFilterProcessPoplurRowView: View {
    var x =         FixedFilterModel(name: "Free Delivery", nameAr: "Free Delivery")
    @EnvironmentObject var vm : HomeFilterViewModel

    var body: some View {
        VStack {
            HStack {
                
                Text(x.name)
                    .font(.boldCustomFontSystem(size: 16))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    x.isCheck ? vm.removePinnedFilter(x: x) :    vm.addToPinnedView(x: x)
                }}, label: {
                    Image(x.isCheck ? "Group 8312" : "Rectangle 17401")
                })
                
            }
            .padding(.horizontal)
            .padding(.bottom,8)
            
            Divider()
        }
//        .padding()
    }
}

struct HomeFilterProcessPoplurRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterProcess()
    }
}
