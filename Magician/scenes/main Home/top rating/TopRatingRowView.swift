//
//  TopRatingRowView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct TopRatingRowView: View {
    @ObservedObject var vm:MainHomeTabViewModel
    var x = "Food"
    
    var body: some View {
        Image(getImg())
        
           
    }
    
    func getImg()  -> String{
        x == "Food" ? "Group 8367" : x == "Toys" ? "Group 8368" : x=="Drinks" ? "Group 8370" : "Group 8369"
    }
}

struct TopRatingRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
