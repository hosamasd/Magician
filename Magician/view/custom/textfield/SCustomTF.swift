//
//  SCustomTF.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SCustomTF: View {
    @Binding var txt:String
    @Binding var isFocus:Bool
    
    var hint = "New Password"
    var isHide = false
    
    var isSavedAddress = false
    var isAddVisa = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 28)
            .fill(Color("txField"))
            //            .fill(Color.gray.opacity(0.2))
            //            .fill(Color.white)
            .overlay(
                
                VStack (spacing:-2){
                    
                    
                    
                    HStack {
                        
                        
                        
                        ZStack(alignment: .leading) {
                            if txt.isEmpty { Text(LocalizedStringKey(hint))
                                .foregroundColor(Color("hintTF"))//.black.opacity(0.2))
                                .fontWeight(.semibold)
                                .font(.customFontSystem(size: 12))
                            }
                            
                            //                                    TextField(hint,text:$txt)
                            //                                        .foregroundColor(.black.opacity(isAccountInfo ? 1 : 0.6))
                            //
                            //                                        .font(.customFontSystem(size: 12))
                            //                                        .disabled(isAddress ? true : false)
                            
                            
                            TextField(hint,text:$txt, onEditingChanged: { focused in
                                withAnimation{
                                isFocus = focused
                                }
                                //                                        print(focused ? isFocus=true : "unfocused")
                            })
                            .foregroundColor(.black.opacity( 0.6))
                            
                            .font(.customFontSystem(size: 12))
                            
                        }
                        
                    }
                    .padding(.leading,32)
                    
                    
                    
                    
                    
                }
            )
            .frame(height:60 )
    }
}

struct SCustomTF_Previews: PreviewProvider {
    static var previews: some View {
        SCustomTF(txt: .constant(""),isFocus: .constant(false))
    }
}
