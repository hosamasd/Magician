//
//  HomeAccountViewModel.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountModel {
    var id = UUID().uuidString
    
    var title : String
    var isNumer : Bool = false
    var isCheck : Bool = false
}
class HomeAccountViewModel: ObservableObject {
    
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var isNotfyOn = true

    @Published var email = "islamhisham755@email.com"
    @Published var name = "Eslam Hisham"
    @Published var phone = "010 234 10 673"

    @Published var isAccountInfo = false

    
    //take picture
    @Published  var image: Image? = Image("Profile picture")
    @Published  var shouldPresentImagePicker = false
    @Published  var shouldPresentActionScheet = false
    @Published  var shouldPresentCamera = false
    
    var defaultValuesRow:[AccountModel] = [
        
        .init(title: "Account info"),//, isNumer: <#T##Bool#>, isCheck: <#T##Bool#>),
        .init(title: "Saved addresses"),
        .init(title: "Wallet",isNumer:true),
        .init(title: "Change password"),
        .init(title: "Notification",isCheck:true)
    ]
    
}
