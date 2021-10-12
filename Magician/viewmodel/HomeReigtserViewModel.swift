//
//  HomeReigtserViewModel.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

class HomeReigtserViewModel: ObservableObject {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var isMainScene = false
    @Published var isLogin = false
    @Published var isSignUp = false
    @Published var isOTP = false
    @Published var isResetPass = false
    @Published var isNewPass = false

    
    @Published var newPassword = ""
    @Published var reNewPassword = ""
    
    @Published var emailReset = ""

    @Published var passwordLogin = ""
    @Published var emailLogin = ""

    @Published var nameSign = ""
    @Published var emailSign = ""
    @Published var mobileSign = ""
    @Published var addressSign = ""

    @Published var passwordSign = ""
    @Published var rePasswordSign = ""
    
    @Published var isMale = true
@Published var totalSmsmCode=""

}
