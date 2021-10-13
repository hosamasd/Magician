//
//  OTPView.swift
//  Magician
//
//  Created by hosam on 12/10/2021.
//

import SwiftUI

struct OTPView: View {
    @ObservedObject var vm : HomeReigtserViewModel
    
    var body: some View {
        VStack {
            
            Text("We have sent an OTP to\nyour Mobile")
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
            
            Text("Please check your mobile number 071*****12 \ncontinue to reset your password")
                .font(.system(size: 14))
                .foregroundColor(.black.opacity(0.6))
                //                .padding(.top)
                .multilineTextAlignment(.center)
                .lineSpacing(6)
                .padding(.top,2)
            
            VStack(spacing:42){
                
                SPasscodeField { otp, completionHandler in
                    vm.totalSmsmCode=otp
                    print(otp)
                    if otp == "444444" {
                        print("true")
                    }else {
                        print("false")
                    }
                    // check if the otp is correct here
                    //                    if isCorrect(otp) { // this could be a network call
                    //                        completionHandler(true)
                    //                    } else {
                    //                        completionHandler(false)
                    //                    }
                }
                //                .padding(.horizontal,24)
                .textContentType(.oneTimeCode)
                .frame(height:40)
                .padding(.top,40)
                
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
            .padding(.top,20)
            .frame(width:getFrameSize().width-48)
            
            //            .frame(width:getFrameSize().width-32)
            //            .padding(.top,60)
            .padding(.bottom,40)
            
            Label(
                title: {
                    
                    Button(action: {withAnimation{vm.isLooding.toggle()}}, label: {
                        Text( " Click Here")
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))//.opacity(0.6))
                            .padding(.leading,-8)
                        
                    })
                },
                icon: {
                    Text("Don't Receive?")
                        .foregroundColor(.black.opacity(0.6))
                    
                }
            )
            Spacer()
            
            
        }
        
        
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView(vm: HomeReigtserViewModel())
    }
}
