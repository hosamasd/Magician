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
    @Binding var hide:Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 28)
            .fill(Color("txField"))
            //            .fill(Color.gray.opacity(0.2))
            //            .fill(Color.white)
            .overlay(
                
                HStack {
                    ZStack(alignment: .leading) {
                        if txt.isEmpty { Text(LocalizedStringKey(hint))
                            .foregroundColor(Color("hintTF"))//.black.opacity(0.2))
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                        }
                        ZStack {
                            if hide {
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
//                        .overlay(
//                            HStack {
//                                Spacer()
//
//                                Button(action: {withAnimation{self.hide.toggle()}}, label: {
//                                    Image(systemName: !hide ? "eye.slash" : "eye")
//                                        .foregroundColor(.gray)
//                                })
//                                .buttonStyle(PlainButtonStyle())
//                                .padding(.trailing)
//                                .padding(.trailing)
//
//                            }
//                            ,alignment: .trailing
//                        )
//                        .padding(.top,10)
                        
                    }
                    .padding(.leading,32)
                    
                    Button(action: {withAnimation{self.hide.toggle()}}, label: {
                        Image(systemName: !hide ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.trailing)
                    .padding(.trailing)
                    .opacity(!isHide ? 0 : 1)
                }
            )
            .frame(height:50)
    }
}

struct CustomTF_Previews: PreviewProvider {
    static var previews: some View {
        CustomTF(txt: .constant(""),hide: .constant(false))
    }
}
