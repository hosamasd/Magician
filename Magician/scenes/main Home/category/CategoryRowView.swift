//
//  CategoryRowView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct CategoryRowView: View {
    var x = "Group 8188"
    var index = 0
    @ObservedObject var vm:MainHomeTabViewModel
    
    var body: some View {
//        ZStack {
            Image(x)
//                .resizable()
//                // adding animation...
//                .frame(height: self.vm.categoryIndex == index ?  170 : 120)
//                .cornerRadius(15)
//                .padding(.horizontal)
//                .tag(index)
            
//            HStack {
//
//                Image("down arrow-1")
//
//                Spacer()
//
//                VStack {
//                    Text("Get First ")
//                        .font(.customFontSystem(size: 30))
//                        .fontWeight(.bold)
//                        +
//                        Text("Order")
//                        .font(.customFontSystem(size: 30))
//                        .fontWeight(.bold)
//                        .foregroundColor(Color("mains"))
//
//                    Text("Get ")
//                        .font(.customFontSystem(size: 22))
//                        .fontWeight(.bold)
//
//                        +
//                        Text("200 EXP")
//                        .font(.customFontSystem(size: 22))
//                        .fontWeight(.bold)
//                        .foregroundColor(Color("mains"))
//                }
//
//                Spacer()
//
//                Image("down arrow")
//
//            }
//            .padding(.horizontal,32)
//        }
        
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
