//
//  ThirdHomeSelectedCategoryRowView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct ThirdHomeSelectedCategoryRowView: View {
    var x =         MainSelectedCateg(name: "All", img: "all food")

    @Binding var selected : String

    var body: some View {
        Button(action: {withAnimation{
            selected = x.name
        }}, label: {
       
        VStack(spacing:8) {
                
                    Image(x.img)
                        .resizable()
                        .frame(width: 43, height: 43)
                        .padding()
//                        .padding()
                        .background(selected == x.name ? ColorConstants.mainColor : .white)
                        .cornerRadius(10)
                        .modifier(viewModifiers())

                    
            Text(x.name)
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(Color.black.opacity(0.8))
        }
            
        })
        
    }
}

struct ThirdHomeSelectedCategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
