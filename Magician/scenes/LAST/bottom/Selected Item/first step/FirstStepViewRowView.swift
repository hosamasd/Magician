//
//  FirstStepViewRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct FirstStepViewRowView: View {
    var x = 1
    @State var isSelect = false
    
    var body: some View {
        HStack {
            HStack {
                
                Text("First Step Item (\(x)")
                    .font(.boldCustomFontSystem(size: 14))
                    .fontWeight(.regular)
                
                Spacer()
                
                Button(action: {withAnimation{
                    isSelect.toggle()
                }}, label: {
                    Image(isSelect ? "Group 6914-1" : "Group 6914")
                })
                
            }
            .padding(.horizontal,32)
        }
        .frame(height:50)
        .background(Color.white)
        .cornerRadius(6)
        
    }
}

struct FirstStepViewRowView_Previews: PreviewProvider {
    static var previews: some View {
//        SelectedItemAddNotes(isShow: .constant(false), isMakeCheckout: .constant(false))

        SelectedItemAddNotes(isShow: .constant(false))
    }
}
