//
//  SelectedItemAddNotesAddMinusView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemAddNotesAddMinusView: View {
    @StateObject var vm = HomeFavoriteViewModel()
    @State var itemCount = 1
    var body: some View {
        VStack(alignment:.leading) {
            
            HStack {
                Text("Chicken Skewers")
                    .font(.system(size: 20))
                    
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.mainColor)
                
                Spacer()
                
                Text("Get 30 EXP")
                    .font(.system(size:  12))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.mainColor)
                    .padding(.horizontal ,  12 )
                    .padding(.vertical, 6 )
                    .background(ColorConstants.mainColor.opacity(0.1))
                    .clipShape(Capsule())
            }
            Text("Chicken skewers with slices of sweet peppers and \ndill")
                .font(.system(size: 15))
                
                .fontWeight(.regular)
                .lineLimit(2)
                .foregroundColor(.black.opacity(0.6))
                
                .padding(.bottom,4)
            //                .padding(.leading,-16)
            
            HStack {
                HStack(spacing:16) {
                    
                    Button(action: {withAnimation{
                        itemCount += 1
                    }}, label: {
                        Image("Group 8358")
                    })
                    
                    Text("\(itemCount)")
                        .font(.system(size:  28))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                    
                    Button(action: {withAnimation{
                        if   itemCount == 1 {return}
                        itemCount -= 1
                        
                    }}, label: {
                        Image("Group 8359")
                    })
                }
                
                Spacer()
                
                Text("55 EGP")
                    .font(.system(size: 24))
                    
                    //                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.oprice)
            }
            .padding(.top,-8)
        }
        .padding(.horizontal,24)
    }
}

struct SelectedItemAddNotesAddMinusView_Previews: PreviewProvider {
    static var previews: some View {
//        SelectedItemAddNotes(isShow: .constant(false), isMakeCheckout: .constant(false))

        SelectedItemAddNotes(isShow: .constant(false))
    }
}
