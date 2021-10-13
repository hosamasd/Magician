//
//  HomeMainTabBarViewModel.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct TabModel:Identifiable {
    var id = UUID().uuidString
    var title,img,sImg:String
    
    
}
class HomeMainTabBarViewModel: ObservableObject {
    @AppStorage("isArabicLanguage") var isArabicLanguage = false

    @Published var index = "Home"
    var tabs:[TabModel] =
        [
            .init(title: "Home", img: "home-1", sImg: "home"),
            .init(title: "Filter", img: "filter", sImg: "filter-1"),
            .init(title: "Map", img: "map", sImg: "map-1"),
            .init(title: "Account", img: "account", sImg: "account-1"),

        ]

}
