//
//  HomeCheckoutViewModel.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

class HomeCheckoutViewModel:ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var isCheckOut = false
    
    @Published var address = "653 Nostrand Ave.,\n Brooklyn, NY 11216"
    @Published var isChangeAddress = false

    @Published var isCashOnDelivery = false
    @Published var isFirstVisa = false
    @Published var isSecondVisa = false
    
    @Published var isAddVisaSheet = false
    
    //add card
    @Published var cardNumber = ""
    @Published var isMonth = false

    @Published var expiryMonth = "MM"
    @Published var isYear = false

    @Published var expiryYear = "YY"
    @Published var securityCode = ""
    @Published var firstName = ""
    @Published var secondName = ""
    @Published var isCanRemoveCard = false
    
    
    func makeCheckVisa(s:inout Bool)  {
        isCashOnDelivery=false
        isFirstVisa=false
        isSecondVisa=false
        s=true
    }
}
