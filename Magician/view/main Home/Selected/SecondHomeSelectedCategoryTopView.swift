//
//  SecondHomeSelectedCategoryTopView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct SecondHomeSelectedCategoryTopView: View {
    @EnvironmentObject var vm:MainHomeTabViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    @Binding var columns:[GridItem]
    //    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    
    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                vm.isSingleItemLists=1
                vm.isSelectedCategoryOffAll.toggle()
            }}, label: {
                
                
                Label(
                    title: {
                        Text(LocalizedStringKey(vm.selectedCategoryOffAll))
                            .font(.customFontSystem(size: 27))
                            .fontWeight(.bold)
                        //                            .padding(.horizontal)
                    },
                    icon: {
                        
                        Image(systemName: vmm.getBackImage())
                            .foregroundColor(Color("mains"))
                        
                    }
                )
                .foregroundColor(.black)
                
            })
            
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

struct SecondHomeSelectedCategoryTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
