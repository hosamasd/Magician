//
//  LoginView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var vm : HomeReigtserViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel

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
                            
                            self.vm.isUserLogin.toggle()
                            self.vm.isLogin=false
                            
                            
//                            vm.isLooding=true
                            
                            
//                                                        vm.isLooding=true
//                            vm.makeLogin()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(ColorConstants.mainColor)
                            .overlay(
                                
                                Text(LocalizedStringKey("Login"))
                                    .font(.system(size: 16))
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
                    Text(LocalizedStringKey("Forgot your password?"))
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black.opacity(0.6))
                })
                .padding(.top,20)
                
                Spacer()
                
                
                Label(
                    title: {
                        
                        Button(action: {withAnimation{vm.isLogin.toggle()
                            vm.isSignUp.toggle()
                            //                            vm.isLogin.toggle()
                        }}, label: {
                            Text( LocalizedStringKey(" Sign Up"))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.mainColor)//.opacity(0.6))
                                .padding(.leading,-8)
                            
                        })
                    },
                    icon: {
                        Text(LocalizedStringKey("Don't have an Account?"))
                            .foregroundColor(Color.black.opacity(0.6))
                        
                    }
                )
                
                .padding(.bottom,isSmallDevice() ? 20 : 40)
                
                //                .padding(.bottom,20)
                //            Spacer()
            }
            .opacity(vm.isResetPass ? 0 : 1)
            //            .opacity(vm.isNewPass ? 0 : 1)
            
            //            if vm.isResetPass {
            //
            //                ResetView()//vm:vm)
            //                    .environmentObject(vm)
            //                    .transition(.move(edge: .trailing))
            //                    .opacity(!vm.isResetPass ? 0 : 1)
            //
            //
            //            }
            //
            //            if vm.isNewPass {
            //
            //                NewPasswordView()//vm:vm)
            //                    .environmentObject(vm)
            //                    .transition(.move(edge: .leading))
            //                    .opacity(!vm.isNewPass ? 0 : 1)
            //
            //
            //            }
            
            if vm.isResetPass {
                
                Reset_NewPassword_Back()
                    .environmentObject(vm)
                    .environmentObject(vmm)
                
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
        LoginView()//vm: HomeReigtserViewModel())
    }
}
