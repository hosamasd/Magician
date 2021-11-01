//
//  HomeFavoriteViewModel.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

class HomeFavoriteViewModel: ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    
    @Published var isSingleItemLists = 1
    
    @Published var favoriteArray:[OfferModel] = [
//        OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
//        OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
//        //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
//        OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
//        OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
        
    ]
    
    @Published var selectedMainCategoryArray:[String] = [
        
        "Special Offers",
        "Breakfast",
        "Burgers",
        "Charity"
        
    ]
    @Published var selectedMenu="Special Offers"
    
    @Published var selectedItem =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    func addOrRemoveToFavorite(x:OfferModel)  {
        favoriteArray.contains(where: {$0.name==x.name}) ? favoriteArray.removeAll(where:{$0.name==x.name}) : favoriteArray.append(x)
        
    }
    
    func checkIfFavorite(x:OfferModel) -> Bool {
        favoriteArray.contains(where: {$0.name==x.name})
    }
    
    func getDatas()  {
        favoriteArray = selectedMenu == "Special Offers" ? favoriteArray : selectedMenu=="Breakfast" ? favoriteArray.suffix(2) : selectedMenu == "Burgers" ? favoriteArray.suffix(3) : favoriteArray.suffix(1)

//        return selectedMenu == "Special Offers" ? favoriteArray : selectedMenu=="Breakfast" ? favoriteArray.suffix(2) : selectedMenu == "Burgers" ? favoriteArray.suffix(3) : favoriteArray.suffix(1)
    }
    
    func fetchApi() {
        withAnimation{isLooding=true}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLooding=false}
            self.favoriteArray =
            [
                OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
                OfferModel(name: "Nobile Housev", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
                //        OfferModel(name: "Nobile Houseb", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
                OfferModel(name: "Nobile Housex", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true),
                OfferModel(name: "Nobile Housez", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5"),
            ]
//            self.favoriteArray=self.getDatas()
        }
    }
    
}
