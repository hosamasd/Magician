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
    @State var isHeight=false
    @StateObject var keyboardHeightHelper = KeyboardHeightHelper()
    
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
                
                Text(LocalizedStringKey("Add Notes To Your Order"))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black.opacity(0.6), lineWidth: 1)
                    .overlay(
                        
                        //                        TextArea("Add Your Notes....", text: $notesText)
                        ZStack {
                            if self.notesText.isEmpty {
                                TextEditor(text:.constant("Add Your Notes...."))
                                    .padding()
                                    
                                    //                                        .font(.body)
                                    .foregroundColor(.black)
                                    .disabled(true)
                            }
                            TextEditor(text: $notesText )
                                .padding()
                                .opacity(self.notesText.isEmpty ? 0.25 : 1)
                                .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
                                    self.isHeight=true
                                    
                                }
                                .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
                                    self.isHeight=false
                                }
                            //                        }
                            
                            //                            .onTapGesture {}
                            //
                            
                        }
                        ,alignment: .leading)
                    .frame(width:getFrameSize().width-64,height: 150)
                    .padding(.vertical,20)
                
                Spacer()
                    .frame(height:isHeight ? self.keyboardHeightHelper.keyboardHeight-100 : 0)
                
                //                    .frame(height:isHeight ? 100 : 0)
                //                    .onTapGesture { hideKeyboardAndSave() }
                
                Button(action: {
                    withAnimation{
                        isShow.toggle()    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text(LocalizedStringKey("Add Notes"))
                                .font(.system(size: 16))
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
        
        .onChange(of: notesText) { value in
            //            let words = notesText.split { $0 == " " || $0.isNewline }
            print(123)
            //                           self.notesText = words.count
        }
        
    }
    
    private func hideKeyboardAndSave() {
        print(123)
        //          UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        //          save()
    }
}

struct SelectedItemAddNotesSheetView_Previews: PreviewProvider {
    static var previews: some View {
        //        SelectedItemAddNotesSheetView(isShow: .constant(true), notesText: .constant(""))
        SContentView()
        //        SelectedItemAddNotes()
        //        SelectedItemAddNotesSheetView(isShow:.constant(false))
    }
}
