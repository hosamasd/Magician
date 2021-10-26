//
//  SSUsedTabBar.swift
//  Magician
//
//  Created by hosam on 26/10/2021.
//

import SwiftUI

struct SSUsedTabBar: View {
    var mainColor = Color.red
    @EnvironmentObject var vm:HomeMainTabBarViewModel
    @Namespace var animation
    
    var body: some View {
        HStack (spacing:0){
            
            Button(action: {
                
                withAnimation(.linear(duration: 0.2)) {vm.sindex = 0}
            }) {
                
                VStack(spacing: 0){
                    
                    // Top Indicator....
                    
                    // Custom Shape...
                    
                    // Slide in and out animation...
                    
                    //                ZStack{
                    
                    Image("Rectangle 17385")
                        .opacity(vm.sindex==0 ? 1 : 0)
                        .padding(.bottom,10)
                    
                    Image( vm.sindex==0 ? "home" :  "home-1")
                        .offset(y: vm.sindex==0 ? 8 : 0)
                    
                    
                    
                    Text(LocalizedStringKey("Home"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .opacity(vm.sindex==0 ? 0 : 1)
                        
                        .foregroundColor(Color.black.opacity( 0.6 ))
                    
                    
                    
                }
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                withAnimation(.linear(duration: 0.2)) {vm.sindex = 1}
            }) {
                
                VStack(spacing: 0){
                    
                    // Top Indicator....
                    
                    // Custom Shape...
                    
                    // Slide in and out animation...
                    
                    //                ZStack{
                    
                    Image("Rectangle 17385")
                        .opacity(vm.sindex==1 ? 1 : 0)
                        .padding(.bottom,10)
                    
                    Image( vm.sindex==1 ? "filter-1" :  "filter")
                        .offset(y: vm.sindex==1 ? 8 : 0)
                    
                    
                    
                    Text(LocalizedStringKey("Filter"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .opacity(vm.sindex==1 ? 0 : 1)
                        
                        .foregroundColor(Color.black.opacity( 0.6 ))
                    
                    
                    
                }
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                withAnimation(.linear(duration: 0.2)) {vm.sindex = 2}
            }) {
                
                VStack(spacing: 0){
                    
                    // Top Indicator....
                    
                    // Custom Shape...
                    
                    // Slide in and out animation...
                    
                    //                ZStack{
                    
                    Image("Rectangle 17385")
                        .opacity(vm.sindex==2 ? 1 : 0)
                        .padding(.bottom,10)
                    
                    Image( vm.sindex==2 ? "Icon ionic-ios-heart-empty-1" :  "Icon ionic-ios-heart-empty")
                        .offset(y: vm.sindex==2 ? 8 : 0)
                    
                    
                    
                    Text(LocalizedStringKey("Favorite"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .opacity(vm.sindex==2 ? 0 : 1)
                        
                        .foregroundColor(Color.black.opacity( 0.6 ))
                    
                    
                    
                }
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                withAnimation(.linear(duration: 0.2)) {vm.sindex = 3}
            }) {
                
                VStack(spacing: 0){
                    
                    // Top Indicator....
                    
                    // Custom Shape...
                    
                    // Slide in and out animation...
                    
                    //                ZStack{
                    
                    Image("Rectangle 17385")
                        .opacity(vm.sindex==3 ? 1 : 0)
                        .padding(.bottom,10)
                    
                    Image( vm.sindex==3 ? "Orders-1" :  "Orders")
                        .offset(y: vm.sindex==3 ? 8 : 0)
                        .overlay(
                            
                            Circle()
                                .fill(Color("mains"))
                                .frame(width: 15, height: 15)
                                .overlay(
                                    
                                    Text(("\(vm.totalAddedNewOrders)"))
                                        .font(.system(size: 10))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                )
                                .offset(x: 12, y: -2)
                                .opacity(vm.addTabBadget() ? 1 : 0)
                            
                            ,alignment:.topTrailing)
                    
                    
                    Text(LocalizedStringKey("Orders"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .opacity(vm.sindex==3 ? 0 : 1)
                        
                        .foregroundColor(Color.black.opacity( 0.6 ))
                    
                    
                    
                }
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                withAnimation(.linear(duration: 0.2)) {vm.sindex = 4}
            }) {
                
                
                
                VStack(spacing: 0){
                    
                    // Top Indicator....
                    
                    // Custom Shape...
                    
                    // Slide in and out animation...
                    
                    //                ZStack{
                    
                    Image("Rectangle 17385")
                        .opacity(vm.sindex==4 ? 1 : 0)
                        .padding(.bottom,10)
                    
                    Image( vm.sindex == 4 ? "account-1" :  "account")
                        .offset(y: vm.sindex==4 ? 8 : 0)
                    
                    
                    
                    Text(LocalizedStringKey("Account"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .opacity(vm.sindex==4 ? 0 : 1)
                        
                        .foregroundColor(Color.black.opacity( 0.6 ))
                    
                    
                    
                }
            }
            
        }
        .padding(.horizontal,30)
        // for iphone like 8 and SE
        .padding(.bottom,getSafeArea()!.bottom == 0 ? 15 : getSafeArea()!.bottom)
        .background(Color.white)
    }
}

struct SSUsedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        SSUsedTabBar()
    }
}
