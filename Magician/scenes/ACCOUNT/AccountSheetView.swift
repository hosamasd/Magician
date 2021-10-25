//
//  AccountSheetView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct AccountSheetView: View {
    @EnvironmentObject var vm:HomeMainTabBarViewModel
    @EnvironmentObject var vmm:HomeAccountViewModel
    
    var body: some View {
        VStack {
            
            Spacer()

                VStack {
                
                    HStack {
                        
                        Spacer()

                        Button(action: {withAnimation{
                            vm.isShowUserGift=false
                        }}, label: {
                            Image(systemName: "xmark")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                    })
                        
                    }
                    .padding()
//                    .padding(.vertical)
                    
                    Image("Group 8168")
                    
                    Text("Thank You!")
                        .font(.system(size: 30))
                    
                    Text("You reach 3000 EXP")
                        .font(.system(size: 18))
                    
                    VStack(spacing:24) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("topRate"))
                            .overlay(
                                
                                
                                VStack(spacing:8){
                                    
                                    
                                    
                                    
                                    Image("gift")
                                    
                                    Text("Get 50 % Off For Your Next Order")
                                        .font(.system(size: 20))
                                        //                            .font(.customFontSystem(size: 20))
                                        .fontWeight(.regular)
                                    
                                }
                                    )
                            .frame(height:100)
                   
                    
                    Button(action: {
                        withAnimation{
        //                            vm.isLooding=true
        //                    vm.makeLogin()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(Color("mains"))
                            .overlay(
                                
                                Text(LocalizedStringKey("Order With Gift"))
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .frame(height:60)
                                
                    Button(action: {withAnimation{
                        
                    }}, label: {
                        Text("Later")
                            
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.77))
                    })
                        
                    }
//                    .padding(.top)
                    .padding(.horizontal,32)

    //                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
                }
    //            .padding(.bottom,10)
                .padding(.bottom,getSafeArea()?.bottom)
    //            .padding(.horizontal,32)//32
                .frame(width:getFrameSize().width-0)
                
                .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 20)))

                
                .offset(y: vm.isShowUserGift ? 0 : UIScreen.main.bounds.height/2)
            

        }
        .frame(width:getFrameSize().width)

        .background(Color.black.opacity(0.6))

        .edgesIgnoringSafeArea(.all)
        .onTapGesture(perform: {
            withAnimation{
//                vm.showFilter.toggle()
//                vmm.isHideTabBar=false
                
            }})
        
    }
}

struct AccountSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSheetView()
    }
}
