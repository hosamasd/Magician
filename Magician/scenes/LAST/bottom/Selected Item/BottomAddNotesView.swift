//
//  BottomAddNotesView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct BottomAddNotesView: View {
    @Binding var isShow:Bool

    var body: some View {
        VStack {
            
          
            HStack {
                Text("Add Notes To Your Order")
                        .font(.boldCustomFontSystem(size: 14))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    isShow.toggle()
                }}, label: {
                    Label(
                        title: { Text("Add Notes") },
                        icon: { Image( "Group 8358") }
)
                    .foregroundColor(Color("mains"))
                })
            }
            
            HStack {
                Button(action: {withAnimation{
                    
                }}, label: {
                    Label(
                        title: { Text("Add Cards")
                            .font(.boldCustomFontSystem(size: 18))
                        .fontWeight(.bold)
                            .foregroundColor(.white)
                        },
                        icon: { Image( "Group 8095") }
    )
            })
                .frame(width:180,height:60)
                .background(Color("mains"))
                .cornerRadius(24)
//                .clipShape(Capsule())
                
                Spacer()
            }
        }
//        .padding(.horizontal)
    }
}

struct BottomAddNotesView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemAddNotes()
    }
}
