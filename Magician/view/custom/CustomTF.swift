//
//  CustomTF.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct CustomTF: View {
    @Binding var txt:String
    var hint = "New Password"
    var isHide = false
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 28)
            .fill(Color("txField"))
            //            .fill(Color.gray.opacity(0.2))
            //            .fill(Color.white)
            .overlay(
                
                ZStack(alignment: .leading) {
                    if txt.isEmpty { Text(LocalizedStringKey(hint))
                        .foregroundColor(Color("hintTF"))//.black.opacity(0.2))
                        .fontWeight(.semibold)
                        .font(.system(size: 12))
                    }
                    ZStack {
                        if isHide {
                            SecureField(hint,text:$txt)
                                .foregroundColor(.black.opacity(0.6))
//                                .foregroundColor(Color("hintTF"))//.black.opacity(0.2))
                                .font(.system(size: 12))
                            
                        }
                        else {
                            TextField(hint,text:$txt)
                                .foregroundColor(.black.opacity(0.6))

//                                .foregroundColor(Color("hintTF"))//.black.opacity(0.2))
                                .font(.system(size: 12))
                            
                        }
                    }
                    
                }
                .padding(.leading,32)
            )
            .frame(height:50)
    }
}

struct CustomTF_Previews: PreviewProvider {
    static var previews: some View {
        CustomTF(txt: .constant(""))
    }
}
