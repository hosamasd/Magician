//
//  Reset+NewPassword+Back.swift
//  Magician
//
//  Created by hosam on 03/11/2021.
//

import SwiftUI

struct Reset_NewPassword_Back: View {
    @EnvironmentObject var vm : HomeReigtserViewModel
    @EnvironmentObject var vms : HomeMainTabBarViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {withAnimation{
                    vm.isNewPass ? vm.isNewPass.toggle() : vm.isResetPass.toggle()
                }}, label: {
                    Image(systemName: vms.getBackImage())
                        .font(.system(size: 25))
                        .foregroundColor(.black)

            })
                
                Spacer()
            }
            .padding(.horizontal,48)
            .padding(.bottom)
            
            Text(LocalizedStringKey(getTitle()))
                .font(.system(size: 30))
            
            Text(LocalizedStringKey(getSubTitle()))
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                //                .padding(.top)
                .padding(.top,2)
            
            ZStack {
                
                VStack(spacing:32){
                    
                    CustomTF(txt: $vm.newPassword,hint: "Email",hide: .constant(false))
                    
                    Button(action: {
                        withAnimation{
                            
                            vm.makeResetPass()
                            //                        vm.isLooding=true
                            
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(ColorConstants.mainColor)
                            .overlay(
                                
                                Text(LocalizedStringKey("Send"))
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .frame(height:60)
                }
                .transition(.move(edge: .leading))

                .opacity(vm.isNewPass ? 0 : 1)

                
                if vm.isNewPass {
                    
                    NewPasswordView( )
                        .environmentObject(vm)
                        .transition(.move(edge: .trailing))
                    
                }
            }
            .frame(width:getFrameSize().width-48)
            
            //            .padding(.horizontal,32)
            //            .padding(.top,32)
            .padding(.top,40)
            
            Spacer()
            
            
        }
        .padding(.top,isSmallDevice() ? 30 : 60)//60
    }
    
    func getTitle() -> String {
        vm.isNewPass ? "New Password" : "Reset Password"
    }
    
    func getSubTitle() -> String {
        vm.isNewPass ?  "Please enter your email to receive a\nlink to  create a new password via email" : "Please enter your email to receive a\nlink to  create a new password via email"
    }
}

struct Reset_NewPassword_Back_Previews: PreviewProvider {
    static var previews: some View {
        Reset_NewPassword_Back()
    }
}
