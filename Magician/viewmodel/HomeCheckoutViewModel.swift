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
    
    //main pages
    @Published var isCheckOut = false
    @Published var isTrackMyOrder = false
    
    @Published var address = "653 Nostrand Ave.,\n Brooklyn, NY 11216"
    @Published var isChangeAddress = false
    
    @Published var isCashOnDelivery = false
    @Published var isFirstVisa = false
    @Published var isSecondVisa = false
    
    //notes
    @Published var     notesText=""
    @Published var isShowNotesText = false
    
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
    
    //sheet view
    @Published var isAddVisaSheet = false
    @Published var isOperationSheetDone = false
    
    func makeCheckVisa(s:inout Bool)  {
        isCashOnDelivery=false
        isFirstVisa=false
        isSecondVisa=false
        s=true
    }
    
    @Published var ordersArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        
    ]
    
    func makeAction(s:String)  {
        switch s {
        case "Checkout":
            isCheckOut=true
        case "Send Order":
            isOperationSheetDone=true
        default:
            ()
        }
    }
    
    func getName() -> String {
        isTrackMyOrder ? "Send Order" : "Checkout"
    }
}
