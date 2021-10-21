//
//  MainHomeTabViewModel.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainSelectedCateg:Identifiable {
    var id = UUID().uuidString
    var name,img:String
    var isChosen = false
    
    
}

struct MainCategory:Identifiable {
    var id = UUID().uuidString
    var name,img,nameAr,subImage,mainImg:String
    
    
}

class MainHomeTabViewModel: ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    //carseoul
    @Published var categoryIndex = 0
    
    @Published var isSingleItemLists = 1
    
    @Published var isMainCategoryChosen = false
    @Published var mainCategoryChosenName="Page-1"
    
    
    //select all of category
    @Published var isSelectedCategoryOffAll = false
    @Published var selectedCategoryOffAll = ""
    
    
    
    //main category
    @Published var selectedMainCategoryArray:[MainSelectedCateg] = [
        
        MainSelectedCateg(name: "All", img: "all food",isChosen:true),
        MainSelectedCateg(name: "Pizza", img: "pizza"),
        MainSelectedCateg(name: "Burgers", img: "hamburger"),
        MainSelectedCateg(name: "Crepes", img: "all food"),
        MainSelectedCateg(name: "Asian", img: "hamburger"),

    ]
    
    func selectCategory()  {
//        selectedMainCategoryArray.map{$0.isChosen = true}
    }
    
    @Published var carseolSwapArray = [
        "Group 8188", "Group 8188", "Group 8188", "Group 8188",
    ]
    
//    @Published var categoryArray = [
//        "Group 8367", "Group 8368", "Group 8370", "Group 8369",
//    ]
    
    @Published var categoryArray:[MainCategory] = [
        MainCategory(name: "Food", img: "Group 8367-1",nameAr:"Food",subImage:"food",mainImg: "Group 8367"),
        MainCategory(name: "Toys", img: "Group 8368",nameAr:"Toys",subImage:"Page-1", mainImg: "Group 8368"),
        MainCategory(name: "Clothes", img: "Group 8369",nameAr:"Clothes",subImage:"clothes-1",mainImg: "Group 8369"),
        MainCategory(name: "Others", img: "Group 8370",nameAr:"Others",subImage:"other",mainImg: "Group 8370"),

    ]
    
    init() {
        //        getData()
    }
    
    @Published var topRatingArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        
    ]
    
    @Published var specialOffersArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        
    ]
    
    func getData()  {
        //        withAnimation{isLooding.toggle()}
        //        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
        //
        //            withAnimation{self.isLooding.toggle()}
        //
        //            self.topRatingArray =
        //            [
        //                OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //                OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //                OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //                OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        //            ]
        //
        //        }
        
    }
}
