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
