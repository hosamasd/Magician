//
//  LoginView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var vm : HomeReigtserViewModel
    
    var body: some View {
        ZStack {
            VStack {
                
                Image("Group 8397-1")
                    //                .offset(y:-120)
                    //                    .padding(.top,-200)
                    .resizable()
                    //
                    .aspectRatio(contentMode: .fill)
                    .frame(width:isSmallDevice() ?  getFrameSize().width+60 : getFrameSize().width+70, height:getFrameSize().height/4)
                
                Image("Magician LOGO")
                    .resizable()
                    .frame(width: 75, height: 80)
                //                    .padding(.top,-150)
                //                .padding(.top,-250)
                
                VStack(spacing:24){
                    
                    CustomTF(txt: $vm.emailLogin,hint: "Your Email",hide: .constant(false))
                    
                    CustomTF(txt: $vm.passwordLogin,hint: "Password",isHide: true,hide: $vm.isHidePassSign)
                    
                    Button(action: {
                        withAnimation{
//                            vm.isLooding=true
                            vm.makeLogin()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(Color("mains"))
                            .overlay(
                                
                                Text("Login")
                                    .font(.customFontSystem(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .frame(height:60)
                }
                .frame(width:getFrameSize().width-48)
                .padding(.top,40)
                
                //                .frame(width:getFrameSize().width-32)
                //            .padding(.horizontal,32)
                
                Button(action: {withAnimation{vm.isResetPass.toggle()}}, label: {
                    Text("Forgot your password?")
                        .font(.customFontSystem(size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.6))
                })
                .padding(.top,20)
                
                Spacer()
                
                
                Label(
                    title: {
                        
                        Button(action: {withAnimation{vm.isLogin.toggle()
                            vm.isSignUp.toggle()
                            //                            vm.isLogin.toggle()
                        }}, label: {
                            Text( " Sign Up")
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))//.opacity(0.6))
                                .padding(.leading,-8)
                            
                        })
                    },
                    icon: {
                        Text("Don't have an Account?")
                            .foregroundColor(.black.opacity(0.6))
                        
                    }
                )
                
                .padding(.bottom,isSmallDevice() ? 20 : 40)
                
                //                .padding(.bottom,20)
                //            Spacer()
            }
            .opacity(vm.isResetPass ? 0 : 1)
            .opacity(vm.isNewPass ? 0 : 1)
            
            if vm.isResetPass {
                
                ResetView(vm:vm)
                    .transition(.move(edge: .trailing))
                    .opacity(!vm.isResetPass ? 0 : 1)
                
                
            }
            
            if vm.isNewPass {
                
                NewPasswordView(vm:vm)
                    .transition(.move(edge: .leading))
                    .opacity(!vm.isNewPass ? 0 : 1)
                
                
            }
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    func getHeight() -> CGFloat {
        !isSmallDevice() ? getFrameSize().height/2 - 60  : getFrameSize().height/2 - 200
        //         isSmallDevice() ?  120 : 60
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(vm: HomeReigtserViewModel())
    }
}
