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
    @AppStorage("onBoardDone") var isonBoardDone: Bool = false

    @Published var isHideTabBar=false
    @Published var isShowUserGift=false

    @Published var index = "Home"
    var tabs:[TabModel] =
        [
            .init(title: "Home", img: "home-1", sImg: "home"),
            .init(title: "Filter", img: "filter", sImg: "filter-1"),
            .init(title: "Favorite", img: "Icon ionic-ios-heart-empty", sImg: "Icon ionic-ios-heart-empty-1"),
            .init(title: "Orders", img: "Orders", sImg: "Orders-1"),

            .init(title: "Account", img: "account", sImg: "account-1"),
            
        ]
    
    @Published var isAddNewOrder = false
    @Published var totalAddedNewOrders=0
    
    func getAppLanguage() -> String {
        isArabicLanguage ? "AR" : "Eng"
    }
    
    
    func getBackImage() -> String {
        !isArabicLanguage ? "chevron.backward" : "chevron.forward"
    }
    
    func addTabBadget() -> Bool {
        index == "Orders" && isAddNewOrder
    }
}
