//
//  NewPasswordView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct NewPasswordView: View {
    @StateObject var vm = HomeReigtserViewModel()
    var body: some View {
        VStack {
            
            Text("New Password")
                .font(.system(size: 30))
            
            Text("Please enter your email to receive a\nlink to  create a new password via email")
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                .padding(.top,2)
            
            VStack(spacing:24){
                
                CustomTF(txt: $vm.newPassword)
                
                CustomTF(txt: $vm.reNewPassword,hint: "Confirm Password")
                
                Button(action: {
                    withAnimation{
                        vm.isNewPass.toggle()
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text("Next")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
            }
            .frame(width:getFrameSize().width-48)
            .padding(.top,40)
            
            //            .padding(.horizontal,32)
            Spacer()
            
            
        }
        .padding(.top,60)
        
    }
}

struct NewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NewPasswordView()
    }
}
