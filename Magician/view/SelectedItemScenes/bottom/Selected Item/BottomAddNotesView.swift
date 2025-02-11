//
//  BottomAddNotesView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct BottomAddNotesView: View {
    @Binding var isShow:Bool
    @Binding var notesText:String
    @Binding var isShowSheet:Bool
    @Binding var isAddCheckout:Bool
    
    
    var body: some View {
        VStack {
            
            
            HStack {
                Text(LocalizedStringKey("Add Notes To Your Order"))
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{
                    isShow.toggle()
                }}, label: {
                    Label(
                        title: { Text(LocalizedStringKey("Add Notes"))
                            .foregroundColor(ColorConstants.mainColor)

                        },
                        icon: { Image( "Group 8358") }
                    )
//                                        .opacity(notesText=="" ? 1 : 0)
                    
                })
                .opacity(notesText=="" ? 1 : 0.2)
                .disabled(                notesText=="" ? false : true)
                
            }
            
            
            
            VStack {
                HStack {
                    
                    Text(notesText)
                        .lineLimit(4)
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {withAnimation{
                            isShowSheet.toggle()
                        }}, label: {
                            Image("Icon awesome-edit")
                        }
                        )
                        Spacer()
                    }
                    .padding(.top,4)
                    
                }
                .padding()
            }
            .background(Color.white)
            .opacity(notesText=="" ? 0 : 1)
            
            
            HStack {
                Button(action: {withAnimation{
                    isAddCheckout.toggle()
                }}, label: {
                    Label(
                        title: { Text(LocalizedStringKey("Add Cards"))
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        },
                        icon: { Image( "Group 8095") }
                    )
                })
                .frame(width:180,height:60)
                .background(ColorConstants.mainColor)
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
        //        SelectedItemAddNotes(isShow: .constant(false), isMakeCheckout: .constant(false))
        
        SelectedItemAddNotes(isShow: .constant(false))
    }
}
