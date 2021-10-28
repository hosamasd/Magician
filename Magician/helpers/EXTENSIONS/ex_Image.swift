//
//  ex_Image.swift
//  PlayIT
//
//  Created by hosam on 08/07/2021.
//  Copyright © 2021 Bola Fayez. All rights reserved.
//

import SwiftUI

extension Color {
    
//    init(_ mainColor:String ) {
//        self.init("mains")
//    }
//    
}
extension Image {
    init(_ name: String, defaultImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(defaultImage)
        }
    }
    
    init(_ name: String, defaultSystemImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(systemName: defaultSystemImage)
        }
        
        
    }
    

}

//Image("landscape", defaultSystemImage: "questionmark.circle.fill")
//
//Image("landscape", defaultImage: "empty-photo")
