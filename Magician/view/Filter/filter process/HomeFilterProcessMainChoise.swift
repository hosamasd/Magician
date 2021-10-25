//
//  HomeFilterProcessMainChoise.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeFilterProcessMainChoise: View {
    
    //    @EnvironmentObject var vm : HomeFilterViewModel
    //@EnvironmentObject var vmm : HomeMainTabBarViewModel
    
    @EnvironmentObject var vm : HomeFilterViewModel
    
    var body: some View {
        HStack {
            Spacer()
            HStack(spacing:64){
                
                Button(action: {withAnimation{
                    
                    vm.isFirst=true
                    vm.isSecond=false
                }}, label: {
                    
                    
                    Text(LocalizedStringKey("Popular Filters"))
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(vm.isFirst ? Color("mains") : Color.gray.opacity(0.6))
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 2)
                                .fill(vm.isFirst ? Color("mains") : Color.clear)
                                .frame(width:100,height: 1)
                            ,alignment: .bottom)
                    
                })
                .font(.system(size: 20))
                
                Button(action: {withAnimation{
                    
                    vm.isSecond=true
                    vm.isFirst=false
                }}, label: {
                    
                    
                    Text(LocalizedStringKey("Sort By"))
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(vm.isSecond ? Color("mains") : Color.gray.opacity(0.6))
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 2)
                                .fill(vm.isSecond ? Color("mains") : Color.clear)
                                .frame(width:50,height: 1)
                            ,alignment: .bottom)
                    
                })
                .font(.system(size: 20))
            }
            
            Spacer()
        }
    }
}

struct HomeFilterProcessMainChoise_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterProcess(isShowFilter: .constant(false))
        //        HomeFilterProcessMainChoise()
    }
}
