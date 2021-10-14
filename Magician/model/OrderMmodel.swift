//
//  OrderMmodel.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct OrderMmodel : Identifiable{ //Equatable
    
    var id = UUID().uuidString
    var name,img,desc,price,date:String
    var isOrdered:Bool = false
    
    
}
