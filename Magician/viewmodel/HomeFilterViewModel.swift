//
//  HomeFilterViewModel.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct FixedFilterModel:Identifiable {
    var id = UUID().uuidString
    var name,nameAr:String
    var isCheck = false
    
    
    
}

class HomeFilterViewModel:ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var selectedCategory = "Food"
    @Published var isShowFilter = false
    
    @Published var isFirst = true
    @Published var isSecond = false
    
    
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
    
    @Published var popularArray:[FixedFilterModel] = [
        FixedFilterModel(name: "Free Delivery", nameAr: "Free Delivery"),
        FixedFilterModel(name: "Fast Delivery", nameAr: "Fast Delivery")
,
        FixedFilterModel(name: "Top Rated", nameAr: "Top Rated")
,
        FixedFilterModel(name: "New Added", nameAr: "New Added")

    ]
    
    @Published var sortArray:[FixedFilterModel] = [
        FixedFilterModel(name: "Recommendation", nameAr: "Recommendation"),
        FixedFilterModel(name: "Price : Low - High", nameAr: "Price : Low - High")
,
        FixedFilterModel(name: "Price : High - Low", nameAr: "Price : High - Low")
,
        FixedFilterModel(name: "A to Z", nameAr: "A to Z")
,
        FixedFilterModel(name: "Rating", nameAr: "Rating")
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
