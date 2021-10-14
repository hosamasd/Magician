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
    
    @Published var categoryArray = [
    "Group 8188", "Group 8188", "Group 8188", "Group 8188",
    ]
    
    @Published var topRatingArray = [
    "Food", "Toys", "Drinks", "Clothes",
    ]
}
