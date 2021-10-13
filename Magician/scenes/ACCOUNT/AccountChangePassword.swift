//
//  AccountChangePassword.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountChangePassword: View {
    @ObservedObject var vm:HomeAccountViewModel

    var body: some View {
        VStack {
            
            HomeAccountTopView(vm: vm)
                .padding(.bottom,20)
            
            VStack {
                HStack {
                    
                    Button(action: {withAnimation{vm.isAccountInfo.toggle()}}, label: {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 25))
                            .foregroundColor(Color("mains"))
                        
                    })
                    
                    Spacer()
                    
                    Text("Change password")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color("mains"))

                    Spacer()
                    
                }
                .padding(.horizontal,8)
                .padding(.bottom,20)
           
            
            VStack(spacing:20) {
                CustomTF(txt: $vm.password,hint: "Password",isHide: true,hide: $vm.isHidePassword,isAccountInfo:true)
                
                CustomTF(txt: $vm.rePassword,hint: "Confirm Password",isHide: true,hide: $vm.isHideREPassword,isAccountInfo:true)


            }
            
            Spacer()
            
            Button(action: {
                withAnimation{
//                    vm.isOTP.toggle()
//                                vm.isLooding=true

                }
            }, label: {
                RoundedRectangle(cornerRadius: 28)
                    
                    .fill(Color("mains"))
                    .overlay(
                        
                        Text("Save")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)//.opacity(0.6))
                    )
                
            })
            .frame(height:60)
            
                
        }
        .padding(.horizontal,24)

        }
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
    }
}

struct AccountChangePassword_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
