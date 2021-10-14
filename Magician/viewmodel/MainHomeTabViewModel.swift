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
    
}
