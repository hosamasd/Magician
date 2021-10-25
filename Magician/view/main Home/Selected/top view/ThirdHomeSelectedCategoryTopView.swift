//
//  ThirdHomeSelectedCategoryTopView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct ThirdHomeSelectedCategoryTopView: View {
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    @State var selectedMenu = "All"

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(spacing:14){
                
                //                    LazyVGrid(columns: columns,spacing: 12){
                
                ForEach(vm.selectedMainCategoryArray){index in
                    ThirdHomeSelectedCategoryRowView(x:index,selected: $vm.selectedMenu)
                    //                    CategoryRowView(x: vm.categoryArray[index], vm: vm)
                    //                            TopRatingRowView(vm: vm,x:vm.topRatingArray[index])
                    
                }
                
                
                
            }
            .padding(.horizontal)
        }
    }
}

struct ThirdHomeSelectedCategoryTopView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeWelcome()
        //        ContentView()
        //        ThirdHomeSelectedCategoryTopView()
    }
}
