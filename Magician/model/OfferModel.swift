//
//  OfferModel.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct OfferModel: Identifiable{ //Equatable
    
    var id = UUID().uuidString
    var name,img,subImg,type,location,rating:String
    var offersRange = "55% OFF"
    var isFavorite = false
    
}
