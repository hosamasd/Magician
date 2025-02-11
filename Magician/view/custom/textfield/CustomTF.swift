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
    var isAddress = false
    var isAccountInfo = false
    var isSavedAddress = false
    var isAddVisa = false

    var body: some View {
        RoundedRectangle(cornerRadius: 28)
            .fill(ColorConstants.txField)
            //            .fill(Color.gray.opacity(0.2))
            //            .fill(Color.white)
            .overlay(
                
                VStack (spacing:-2){
                    
                    if isAccountInfo {
                        
                        Text(LocalizedStringKey(hint))
                            .foregroundColor(ColorConstants.hintTF)//.black.opacity(0.2))
                            .fontWeight(.semibold)
                            .font(.system(size: 12))
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(.leading,32)
//                            .padding(.top,4)

                    }
                    
                    HStack {
                        
                        
                        
                        ZStack(alignment: .leading) {
                            if txt.isEmpty { Text(LocalizedStringKey(hint))
                                .foregroundColor(ColorConstants.hintTF)//.black.opacity(0.2))
                                .fontWeight(.semibold)
                                .font(.system(size: 12))
                            }
                            ZStack {
                                if hide {
                                    SecureField("",text:$txt)
                                        .foregroundColor(Color.black.opacity(isAccountInfo ? 1 : 0.6))
                                        //                                .foregroundColor(ColorConstants.hintTF)//.black.opacity(0.2))
                                        .font(.system(size: 12))
                                        .disabled(isAddress ? true : false)
                                    
                                }
                                else {
//                                    TextField(hint,text:$txt)
//                                        .foregroundColor(.black.opacity(isAccountInfo ? 1 : 0.6))
//
//                                        .font(.system(size: 12))
//                                        .disabled(isAddress ? true : false)
                                        
                                    
                                    TextField("",text:$txt, onEditingChanged: { focused in
                                        print(focused ? "focused" : "unfocused")
                                    })
                                        .foregroundColor(Color.black.opacity(isAccountInfo ? 1 : 0.6))
                                        
                                        .font(.system(size: 12))
                                        .disabled(isAddress ? true : false)
                                    
                                }
                            }
                            
                        }
                        .padding(.leading,32)
                        
                        
                        ZStack {
                            Button(action: {withAnimation{self.hide.toggle()}}, label: {
                                Image(systemName: !hide ? "eye.slash" : "eye")
                                    .foregroundColor(.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .padding(.trailing)
                            .padding(.trailing)
                            .opacity(!isHide ? 0 : 1)
                            
                            Button(action: {withAnimation{self.hide.toggle()}}, label: {
                                Image("Icon ionic-md-close-circle-outline")
                            })
                            .padding(.trailing)
                            .padding(.bottom)
    //                        .padding(.trailing)
                            .opacity(!isSavedAddress ? 0 : 1)
                        }
                        
                       
                    }
                }
            )
//            .frame(height:isAccountInfo ? 60 : isAddVisa ? 60 : 50)
        
            .frame(height:CGFloat(isAccountInfo ? 60 : isAddVisa ? 60 : 50))

    }
}

struct CustomTF_Previews: PreviewProvider {
    static var previews: some View {
//        CustomTF(txt: .constant(""),hide: .constant(false),is)
        CustomTF(txt: .constant(""),hint: "Confirm Password",isHide: true, hide: .constant(false),isAccountInfo:true)

            .environment(\.layoutDirection,  .rightToLeft )
            .environment(\.locale, Locale(identifier: "ar" ))
    }
}
