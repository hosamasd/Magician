//
//  SecondHomeFilterRowView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SecondHomeFilterRowView: View {
    var x =         MainCategory(name: "Food", img: "Group 8367-1",nameAr:"Food",subImage:"food",mainImg: "Group 8367")
    @Binding var selected : String
    var body: some View {
        Button(action: {withAnimation{
            selected=x.name
        }}, label: {
            Label(
                title: { Text(x.name)
                    .font(.customFontSystem(size: 13))
                    
                    .foregroundColor(selected==x.name ? .white : .black)
                },
                icon: { Image( x.subImage)
                    .resizable()
                    .frame(width: 17, height: 17)
                }
            )
        })
        .padding(12)
        .background(selected==x.name ? Color("mains")  : Color.white )
        .cornerRadius(10)
        .modifier(viewModifiers())
        .padding(.bottom)
    }
}

struct SecondHomeFilterRowView_Previews: PreviewProvider {
    static var previews: some View {
        SecondHomeFilterRowView(selected: .constant("Food"))
    }
}
