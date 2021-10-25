//
//  HomeFilterViewModel.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

class FixedFilterModel {
    internal init(id: String = UUID().uuidString, name: String, nameAr: String, isCheck: Bool = false) {
        self.id = id
        self.name = name
        self.nameAr = nameAr
        self.isCheck = isCheck
    }
    
    var id = UUID().uuidString
    var name,nameAr:String
    var isCheck = false
    
    
    
}

class HomeFilterViewModel:ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var selectedCategory = ""//"Food"

    @Published var isShowFilter = false
    
    @Published var isFirst = true
    @Published var isSecond = false
    
    
    @Published var categoryArray:[MainCategory] = [
        MainCategory(name: "Food", img: "Group 8367-1",nameAr:"Food",subImage:"food",mainImg: "Group 8367"),
        MainCategory(name: "Toys", img: "Group 8368",nameAr:"Toys",subImage:"Page-1", mainImg: "Group 8368",index:1),
        MainCategory(name: "Clothes", img: "Group 8369",nameAr:"Clothes",subImage:"clothes-1",mainImg: "Group 8369",index:2),
        MainCategory(name: "Others", img: "Group 8370",nameAr:"Others",subImage:"other",mainImg: "Group 8370",index:3),
        
    ]
    
    @Published var filterArray:[OfferModel] = [
        OfferModel(name: "Nobile", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobile ", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobil", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        OfferModel(name: "Nobiles", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        OfferModel(name: "Nobilz", img: "28", subImg: "ramen", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
        OfferModel(name: "PIZZA", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
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
    
    @Published var pinnedViewsArray:[FixedFilterModel] = [
//        FixedFilterModel(name: "Price ", nameAr: "Price : Low - High")
        
    ]
    
    func addToPinnedView(x:FixedFilterModel)  {
        if popularArray.contains(where: {$0.name==x.name}) {
            let q = popularArray.filter{$0.name==x.name}
            q.first?.isCheck=true
        }
        
        if sortArray.contains(where: {$0.name==x.name}) {
            let q = sortArray.filter{$0.name==x.name}
            q.first?.isCheck=true
        }
        pinnedViewsArray.contains(where:{$0.name==x.name}) ? () : pinnedViewsArray.append(x)
        
    }
    func removePinnedFilter(x:FixedFilterModel)  {
        var index = 0
        
        for i in 0..<pinnedViewsArray.count{
            
            if x.name == pinnedViewsArray[i].name{
                
                index = i
            }
        }
        
        // removing pin view...
        
        pinnedViewsArray.remove(at: index)
        
        if popularArray.contains(where: {$0.name==x.name}) {
            let q = popularArray.filter{$0.name==x.name}
            q.first?.isCheck=false
        }
        
        if sortArray.contains(where: {$0.name==x.name}) {
            let q = sortArray.filter{$0.name==x.name}
            q.first?.isCheck=false
        }
    }
    
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
    
 
    
    func getDatas() -> [OfferModel] {
        
       return selectedCategory == "Food" ? filterArray : selectedCategory=="Toys" ? filterArray.suffix(2) : selectedCategory == "Clothes" ? filterArray.suffix(3) : filterArray.suffix(1)
    }
}
