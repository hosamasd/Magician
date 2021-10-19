//
//  SelectedItemSceneRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemSceneRowView: View {
    var x =         "Special Offers"

    @Binding var selected : String

    
    var body: some View {
        
     
        Button(action: {withAnimation{selected=x}}, label: {
       
        VStack {
            
            Text(x)
                .font(.customFontSystem(size: 16))
                .fontWeight(.bold)
                .foregroundColor(selected==x ? Color("mains") : .black)
            
            RoundedRectangle(cornerRadius: 2)
                .fill(selected==x ? Color("mains") : .clear)

                .frame(width: 80, height: 2)
                .padding(.top,-4)
        }
        })
    }
}

struct SelectedItemSceneRowView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes()
    }
}
