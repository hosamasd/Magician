//
//  HomeFilterViewModel.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

class HomeFilterViewModel:ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var selectedCategory = "Food"

    
    @Published var categoryArray:[MainCategory] = [
        MainCategory(name: "Food", img: "Group 8367-1",nameAr:"Food",subImage:"food",mainImg: "Group 8367"),
        MainCategory(name: "Toys", img: "Group 8368",nameAr:"Toys",subImage:"Page-1", mainImg: "Group 8368"),
        MainCategory(name: "Clothes", img: "Group 8369",nameAr:"Clothes",subImage:"clothes-1",mainImg: "Group 8369"),
        MainCategory(name: "Others", img: "Group 8370",nameAr:"Others",subImage:"other",mainImg: "Group 8370"),
        
    ]
    
    @Published var filterArray:[OfferModel] = [
        OfferModel(name: "Nobile Houses", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile Housex", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
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
