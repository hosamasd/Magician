//
//  HomeReigtserViewModel.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

class HomeReigtserViewModel: ObservableObject {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @Published var isGet = false
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var isMainScene = false
    @Published var isLogin = false
    @Published var isSignUp = false
    @Published var isOTP = false
    @Published var isResetPass = false
    @Published var isNewPass = false
    @Published var isSHowLocation = false
    
    
    @Published var newPassword = ""
    @Published var isHideNewPass = true
    
    @Published var reNewPassword = ""
    @Published var isHideRENewPass = true
    
    @Published var emailReset = ""
    
    @Published var passwordLogin = ""
    @Published var isHidePassLogin = true
    
    @Published var emailLogin = ""
    
    @Published var nameSign = ""
    @Published var emailSign = ""
    @Published var mobileSign = ""
    @Published var addressSign = ""
    
    @Published var passwordSign = ""
    @Published var isHidePassSign = true
    
    @Published var isHideREPassSign = true
    @Published var rePasswordSign = ""
    
    @Published var isMale = true
    @Published var totalSmsmCode=""
    
    
    func checkPhone(p:String,size:Int = 3) -> Bool {
        p.count >= 3 ? false : true
    }
    
    func checkPasswordAndRe() -> Bool {
        passwordSign==rePasswordSign
    }
    
    func checkNewPasswordAndRe() -> Bool {
        newPassword == reNewPassword
    }
    
    func getError(s:String)  {
        self.alertMsg = s
        self.alert.toggle()
        
    }
    
    func makeLogin()  {
        
//        if checkPhone(p: emailLogin) {getError(s: "Please type valid Phone Number")  ; return  }
//        //
//        if checkPhone(p:passwordLogin) {getError(s: "Please type valid Password") ; return  }
        //
        withAnimation{
            
            self.isLooding.toggle()
        }
        //
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                self.isLogin=false
                
            }
        }
        
    }
    
    func makeSignUp()  {
        
//        if checkPhone(p: nameSign) {getError(s: "Please type valid User Name")  ; return  }
//        //
//        if !emailLogin.isValidEmail { getError(s:  "Please type valid email ")  ; return   }
//
//        if checkPhone(p: mobileSign) {getError(s: "Please type valid Phone Number")  ; return  }
//
//        if checkPhone(p:addressSign) {getError(s: "Please Choose vaLid Address") ; return  }
//
//        if checkPhone(p: passwordSign) {getError(s: "Please type valid Password")  ; return  }
//        //
//        if !checkPasswordAndRe() {getError(s: "Please make Password and confirm password same!") ; return }
//
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isOTP.toggle()
//                self.isSignUp=false
                
            }
        }
        
    }
    
    func makeResetPass()  {
//        if !emailLogin.isValidEmail { getError(s:  "Please type valid email ")  ; return   }
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isNewPass.toggle()
                self.isResetPass=false
                
            }
        }
        
    }
    
    func makeNewPass()  {
        
//        if !checkNewPasswordAndRe() {getError(s: "Please make Password and confirm password same!") ; return }
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                //                self.isNewPass.toggle()
                self.isNewPass=false
                
            }
        }
        
    }
    
    func makeOTPConfirmation()  {
        
//        if totalSmsmCode.count != 3 {getError(s: "Please Type Correct Otp") ; return }
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                self.isOTP=false
                self.isSignUp=false
                
            }
        }
    }
}
