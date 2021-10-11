//
//  InfoModel.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import Foundation
import SwiftUI

struct InfoModel:Identifiable {
    var id = UUID().uuidString
    
    var title : String
    var pic : String
    var desc : String

}
