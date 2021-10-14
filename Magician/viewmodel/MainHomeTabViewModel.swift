//
//  MainHomeTabViewModel.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

class MainHomeTabViewModel: ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var categoryIndex = 0
    
    @Published var carseolSwapArray = [
    "Group 8188", "Group 8188", "Group 8188", "Group 8188",
    ]
    
    @Published var categoryArray = [
    "Group 8367", "Group 8368", "Group 8370", "Group 8369",
    ]
  
    
    @Published var topRatingArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),

    ]
    
    @Published var specialOffersArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),

    ]
}
