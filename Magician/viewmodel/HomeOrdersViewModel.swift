//
//  HomeOrdersViewModel.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

class HomeOrdersViewModel: ObservableObject {
    
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLooding = false
    
    @Published var selectedOrder    =         OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021")
    
    @Published var ordersArray:[OrderMmodel] = [
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021",isOrdered:true),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021",isOrdered:true),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        //        OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
        
        
    ]
    
    func fetchApi() {
        withAnimation{isLooding=true}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLooding=false}
            self.ordersArray =
                [
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021",isOrdered:true),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021",isOrdered:true),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                    OrderMmodel(name: "Chicken Skewers", img: "ss", desc: "“Chicken skewers with slices of sweet peppers and dill”", price: "55 EGP", date: "28/04/2021"),
                ]
            //            self.favoriteArray=self.getDatas()
        }
    }
}
