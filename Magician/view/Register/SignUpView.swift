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
        VStack {
            
            Text("Sign Up")
                .font(.system(size: 30))
            
            Text("Add your details to sign up")
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                .padding(.top)
            
            VStack(spacing:15){
                
                CustomTF(txt: $vm.nameSign,hint: "Name")
                
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
            .padding(.horizontal,32)
            .padding(.bottom,-16)
            
            
            VStack(spacing:28){
                
                CustomTF(txt: $vm.emailSign,hint: "Email")
                
                CustomTF(txt: $vm.mobileSign,hint: "Mobile No")
                
                CustomTF(txt: $vm.addressSign,hint: "Address")
                
                CustomTF(txt: $vm.passwordSign,hint: "Password")
                
                CustomTF(txt: $vm.rePasswordSign,hint: "Confirm Password")
                
                Button(action: {
                    withAnimation{
                        
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
            .padding(.horizontal,32)
            .padding(.top,32)
            
            Spacer()
            
            Label(
                title: {
                    
                    Button(action: {}, label: {
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
            
            
            .padding(.bottom,40)
            
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        SignUpView(vm: HomeReigtserViewModel())
    }
}
