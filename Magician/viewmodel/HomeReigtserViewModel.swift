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
    
    func getError(s:String)  {
        self.alertMsg = s
        self.alert.toggle()
        
    }
    
    func makeLogin()  {
        
//        if checkPhone(p: nameLogin) {getError(s: "Please type valid username")  ; return  }
//
//        if checkPhone(p:passLogin) {getError(s: "Please type valid Password") ; return  }
//
//        withAnimation{
//
//            self.isLoading.toggle()
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
//            withAnimation{self.isLoading.toggle()}
//            DispatchQueue.main.async {
//                self.isUserLogin.toggle()
//
//            }
//        }

    }
    
}
