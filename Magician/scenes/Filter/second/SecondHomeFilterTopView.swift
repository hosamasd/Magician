//
//  SecondHomeFilterTopView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SecondHomeFilterTopView: View {
    @EnvironmentObject var vm : HomeFilterViewModel

//    @StateObject var vm = HomeFilterViewModel()
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(spacing:8){
                
                //                    LazyVGrid(columns: columns,spacing: 12){
                
                ForEach(vm.categoryArray){index in
                    SecondHomeFilterRowView(x:index,selected: $vm.selectedCategory)
                    
                }
                
                
                
            }
            .padding(.horizontal)
        }
        
        
    }
}

struct SecondHomeFilterTopView_Previews: PreviewProvider {
    static var previews: some View {
        SecondHomeFilterTopView()//selected: .constant("Food"))
        //        HomeFilter()
    }
}
