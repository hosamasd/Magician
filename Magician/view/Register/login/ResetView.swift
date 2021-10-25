//
//  ResetView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct ResetView: View {
    @StateObject var vm = HomeReigtserViewModel()
    
    var body: some View {
        VStack {
            
            Text(LocalizedStringKey("Reset Password"))
                .font(.system(size: 30))
            
            Text(LocalizedStringKey("Please enter your email to receive a\nlink to  create a new password via email"))
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
//                .padding(.top)
                .padding(.top,2)

            VStack(spacing:32){
                
                CustomTF(txt: $vm.newPassword,hint: "Email",hide: .constant(false))
                
                Button(action: {
                    withAnimation{
                      
                        vm.makeResetPass()
//                        vm.isLooding=true

                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text(LocalizedStringKey("Send"))
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
            }
            .frame(width:getFrameSize().width-48)

//            .padding(.horizontal,32)
//            .padding(.top,32)
            .padding(.top,40)

            Spacer()
            
            
        }
        .padding(.top,60)

    }
}

struct ResetView_Previews: PreviewProvider {
    static var previews: some View {
        ResetView()
    }
}
