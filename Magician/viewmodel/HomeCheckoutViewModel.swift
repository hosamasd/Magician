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
    
    @Published var isCheckOut = true
    
    @Published var address = "653 Nostrand Ave.,\n Brooklyn, NY 11216"
    @Published var isCashOnDelivery = false
    @Published var isFirstVisa = false
    @Published var isSecondVisa = false
    
    @Published var isAddVisaSheet = true
    
    //add card
    @Published var cardNumber = ""
    @Published var expiryMonth = ""
    @Published var expiryYear = ""
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
