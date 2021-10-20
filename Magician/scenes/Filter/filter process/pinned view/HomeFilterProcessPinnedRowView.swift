//
//  HomeFilterProcessPinnedRowView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeFilterProcessPinnedRowView: View {
    var x =         FixedFilterModel(name: "Free Delivery", nameAr: "Free Delivery")
    
    @EnvironmentObject var vm:HomeFilterViewModel
    var body: some View {
        HStack {
            
            Text(x.name)
                .font(.customFontSystem(size: 13))
            
            Button(action: {withAnimation(.default){
                vm.removePinnedFilter(x: x)
            }}, label: {
                Image(systemName: "xmark")
            })
            .foregroundColor(.black)
        }
        .padding(.vertical,8)
        .padding(.horizontal,16)
        .background(Color("mains").opacity(0.2))//0.16
        .clipShape(Capsule())
    }
}

struct HomeFilterProcessPinnedRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterProcess()
    }
}
