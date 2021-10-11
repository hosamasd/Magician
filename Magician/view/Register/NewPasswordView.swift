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
                .padding(.top)
            
            VStack(spacing:24){
                
                CustomTF(txt: $vm.newPassword)
                
                CustomTF(txt: $vm.reNewPassword,hint: "Confirm Password")
                
                Button(action: {
                    withAnimation{
                        
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
            .padding(.horizontal,32)
            Spacer()
            
            
        }
    }
}

struct NewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NewPasswordView()
    }
}
