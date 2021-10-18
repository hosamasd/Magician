//
//  HomeFilterRowView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeFilterRowView: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeFilterRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
//        HomeFilterRowView()
    }
}
