//
//  SignUpView.swift
//  Magician
//
//  Created by hosam on 12/10/2021.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var vm : HomeReigtserViewModel
    
    var body: some View {
        ZStack {
            
            ScrollView(isSmallDevice() ? .vertical : .init(),showsIndicators:false) {
                VStack {
                    
                    Text("Sign Up")
                        .font(.system(size: 30))
                    
                    Text("Add your details to sign up")
                        .font(.system(size: 14))
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.top,2)
                    
                    VStack(spacing:12){
                        
                        CustomTF(txt: $vm.nameSign,hint: "Name",hide: .constant(false))
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                withAnimation{vm.isMale=true}
                            }, label: {
                                
                                Label(
                                    title: {
                                        
                                        Text( "Male")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.leading,8)
                                        
                                    },
                                    icon: {
                                        Image(vm.isMale ? "Group 8312" : "Rectangle 17387")
                                        
                                    }
                                )
                                
                            })
                            
                            Spacer()
                            
                            Button(action: {
                                withAnimation{vm.isMale=false}
                            }, label: {
                                
                                Label(
                                    title: {
                                        
                                        Text( "Female")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.leading,8)
                                        
                                    },
                                    icon: {
                                        Image(!vm.isMale ? "Group 8312" : "Rectangle 17387")
                                        
                                    }
                                )
                                
                            })
                            
                            Spacer()
                            
                            
                        }
                        
                    }
                    .padding(.top,20)
                    .frame(width:getFrameSize().width-48)
                    
                    //                .padding(.horizontal,32)
                    .padding(.bottom,-16)
                    
                    
                    VStack(spacing:24){
                        
                        CustomTF(txt: $vm.emailSign,hint: "Email",hide: .constant(false))
                        
                        CustomTF(txt: $vm.mobileSign,hint: "Mobile No",hide: .constant(false))
                        
                        CustomTF(txt: $vm.addressSign,hint: "Address",hide: .constant(false))
                        
                        CustomTF(txt: $vm.passwordSign,hint: "Password",isHide: true,hide: $vm.isHidePassSign)
                        
                        CustomTF(txt: $vm.rePasswordSign,hint: "Confirm Password",isHide: true,hide: $vm.isHideREPassSign)
                        
                        Button(action: {
                            withAnimation{
                                vm.isOTP.toggle()
//                                vm.isLooding=true

                            }
                        }, label: {
                            RoundedRectangle(cornerRadius: 28)
                                
                                .fill(Color("mains"))
                                .overlay(
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 16))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)//.opacity(0.6))
                                )
                            
                        })
                        .frame(height:60)
                    }
                    .frame(width:getFrameSize().width-48)
                    
                    //                .padding(.horizontal,32)
                    .padding(.top,32)
                    .padding(.bottom,40)
                    
                    Spacer()
                    
                    Label(
                        title: {
                            
                            Button(action: { withAnimation{
                                vm.isLogin.toggle()
                                vm.isSignUp.toggle()
                            }}, label: {
                                Text( " Login")
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
                    
                    
                }
                .frame(width:getFrameSize().width-48)
                
            }
            .keyboardSpace()

            .opacity(vm.isOTP ? 0 : 1)
            
            if vm.isOTP {
                
                OTPView(vm:vm)
                    .transition(.move(edge: .leading))
                
            }
        }
        .padding(.top,60)
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView()
        SignUpView(vm: HomeReigtserViewModel())
    }
}
