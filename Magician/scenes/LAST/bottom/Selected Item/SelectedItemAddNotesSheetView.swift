//
//  SelectedItemAddNotesSheetView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemAddNotesSheetView: View {
    @Binding var isShow:Bool
    @Binding var notesText:String
    
    var body: some View {
        VStack() {
            
            Spacer()
            
            VStack(spacing:8) {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {withAnimation{isShow.toggle()}}, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    })
                    
                }
                //                .padding()
                .padding(.horizontal)
                
                Text("Add Notes To Your Order")
                    .font(.boldCustomFontSystem(size: 20))
                    .fontWeight(.bold)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black.opacity(0.6), lineWidth: 1)
                    .overlay(
                        
                        TextEditor(text: $notesText)
                            .padding()
                        
                        ,alignment: .leading)
                    .frame(width:getFrameSize().width-64,height: 150)
                    .padding(.vertical,20)
                
                Button(action: {
                    withAnimation{
                        isShow.toggle()    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text("Add Notes")
                                .font(.customFontSystem(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
                .padding(.top,50)
                                .padding(.bottom,bottomSafeArea(x: 15))
                .frame(width:getFrameSize().width-48)
                
                
            }
//            .padding(.bottom,bottomSafeArea(x: 0,y: 0) )

//            .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            
            //            .padding(.bottom,10)
            //            .padding(.bottom,getSafeArea()?.bottom)
            .padding(.top,20)
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)))
            .offset(y: isShow ? 0 : UIScreen.main.bounds.height/2)
        }
        .background(Color.black.opacity(0.6))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SelectedItemAddNotesSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemAddNotesSheetView(isShow: .constant(true), notesText: .constant(""))
        //        SContentView()
        //        SelectedItemAddNotes()
        //        SelectedItemAddNotesSheetView(isShow:.constant(false))
    }
}
