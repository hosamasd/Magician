//
//  MainHomeReg.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct MainHomeReg: View {
    var body: some View {
        VStack {
            
            Image("Shaped subtraction")
                .resizable()
                .frame(maxHeight:getFrameSize().height/2-60)
            
            Image("Magician LOGO")
                .padding(.top,-60)
            
            Text("Discover The Best Order From Over 10,000\n Restaurants, Store And Fast Delivery To Your\n Doorstep")
                .font(.system(size: 13))
                .fontWeight(.regular)
                .foregroundColor(Color.black.opacity(0.6))
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .lineSpacing(6)
                .padding(.top,20)
            
            Spacer()
            
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
            .padding(.horizontal,32)
            .frame(height:60)
            
            Button(action: {
                withAnimation{
                
                }
            }, label: {
                RoundedRectangle(cornerRadius: 28)
                    
                    .stroke(Color("mains"))
                    .overlay(
                        
                        Text("Create an Account")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("mains"))//.opacity(0.6))
                    )
                
            })
            .padding(.horizontal,32)
            .frame(height:60)
            .padding(.top)
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainHomeReg_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeReg()
    }
}
