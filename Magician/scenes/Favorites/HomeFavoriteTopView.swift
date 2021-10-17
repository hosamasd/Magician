//
//  HomeFavoriteTopView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct HomeFavoriteTopView: View {
    @EnvironmentObject var vm:HomeFavoriteViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @Binding var columns:[GridItem]

    var body: some View {
        HStack {
            
          
                
                        Text(LocalizedStringKey("Favorite"))
                            .font(.customFontSystem(size: 17))
                            .fontWeight(.bold)
                 
              
                .foregroundColor(.black)
                
           
            
            Spacer()
            
            HStack(spacing:6) {
                Button(action: {withAnimation{
                    
                    vm.isSingleItemLists=2
                    columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
                }}, label: {
                    Image(vm.isSingleItemLists==2 ? "list" : "list-1")
                })
                
                
                Button(action: {withAnimation{vm.isSingleItemLists=1
                    
                    columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
                    
                }}, label: {
                    Image(vm.isSingleItemLists==1 ? "computer-1" : "computer")
                })
            }
        }
        .padding(.horizontal)
    }
}

struct HomeFavoriteTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        HomeFavoriteTopView()
    }
}
