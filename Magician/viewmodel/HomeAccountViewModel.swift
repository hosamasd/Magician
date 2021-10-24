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
    
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    @Published var isShowLogout = false

    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    //add address
    @Published var isAddAddressSheet = true
    @Published var newAddedAddress = "Al-obour , Cairo , Egypt"
    @Published var isSHowLocation=false
    
    @Published var isNotfyOn = true
    
    @Published var email = "islamhisham755@email.com"
    @Published var name = "Eslam Hisham"
    @Published var phone = "010 234 10 673"
    
    @Published var address = "Al-obour , Cairo , Egypt"
    
    @Published var password = ""
    @Published var rePassword = ""
    @Published var isHidePassword = true
    @Published var isHideREPassword = true
    
    
    @Published var isAccountInfo = false
    @Published var isSavedAddress = false
    @Published var isChangePassword = false
    
    
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
        .init(title: "Notification",isCheck:true),
        .init(title: "Language",isCheck:true),
        .init(title: "Logout",isCheck:true)
        
    ]
    
//    func makeLogout()  {
//        withAnimation{isLooding.toggle()}
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
//
//            withAnimation{self.isLooding.toggle()}
//            self.isUserLogin.toggle()
//        }
//    }
    
    func makeLogout(vm:HomeMainTabBarViewModel)  {
        withAnimation{isLooding.toggle()}
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            
            withAnimation{self.isLooding.toggle()}
            vm.index="Home"
            self.isUserLogin.toggle()
        }
    }
}
