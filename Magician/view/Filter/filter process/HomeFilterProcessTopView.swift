//
//  HomeFilterProcessTopView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeFilterProcessTopView: View {
//    @EnvironmentObject var vm : HomeFilterViewModel
//@EnvironmentObject var vmm : HomeMainTabBarViewModel
    
        @StateObject var vm = HomeFilterViewModel()

    var body: some View {
        HStack {
            
            Button(action: {withAnimation{vm.isShowFilter.toggle()}}, label: {
                Image(systemName: "chevron.backward")

//                Image(systemName: vmm.getBackImage())//"chevron.backward")
                    .font(.customFontSystem(size: 25))
                    .foregroundColor(Color("mains"))
                
            })
            
            Spacer()
            
            Text(LocalizedStringKey("Filter"))
                .font(.customFontSystem(size: 17))
                .fontWeight(.bold)
            
            
            Spacer()
            
        }
        .padding(.horizontal,16)
//        .padding(.bottom,20)
    }
}

struct HomeFilterProcessTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterProcess()
    }
}
