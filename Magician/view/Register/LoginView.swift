//
//  LoginView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = HomeReigtserViewModel()
    
    var body: some View {
        VStack {
            
            Image("Group 8397-1")
//                .offset(y:-120)
                .padding(.top,-150)
            //                .resizable()
            //
            //                .aspectRatio(contentMode: .fill)
            //                .frame(maxWidth:getFrameSize().width,maxHeight:getFrameSize().height/3)
            
            Image("Magician LOGO")
                .resizable()
                .frame(width: 75, height: 80)
                .padding(.top,-150)
//                .padding(.top,-250)
            
            VStack(spacing:24){
                
                CustomTF(txt: $vm.emailLogin,hint: "Your Email")
                
                CustomTF(txt: $vm.passwordLogin,hint: "Password")
                
                Button(action: {
                    withAnimation{
                        
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text("Login")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
            }
            .frame(width:getFrameSize().width-32)
//            .padding(.horizontal,32)
            
            Button(action: {}, label: {
                Text("Forgot your password?")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.black.opacity(0.6))
            })
            .padding(.top,20)
            
            Spacer()
            
            Button(action: {}, label: {
                Label(
                    title: {
                        Text( " Sign Up")
                            .foregroundColor(Color("mains"))//.opacity(0.6))
                        
                    },
                    icon: {
                        Text("Don't have an Account?")
                            .foregroundColor(.black.opacity(0.6))
                        
                    }
                )
            })
            .padding(.bottom,60)
            //            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
