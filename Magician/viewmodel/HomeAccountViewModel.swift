//
//  HomeAccountViewModel.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

class HomeAccountViewModel: ObservableObject {
    

    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    //take picture
    @Published  var image: Image? = Image("Profile picture")
    @Published  var shouldPresentImagePicker = false
    @Published  var shouldPresentActionScheet = false
    @Published  var shouldPresentCamera = false
    
}
