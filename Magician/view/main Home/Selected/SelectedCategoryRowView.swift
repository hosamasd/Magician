//
//  SelectedCategoryRowView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct SelectedCategoryRowView: View {
    var x =                 OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    @EnvironmentObject var vm:MainHomeTabViewModel
    //    @StateObject var vm=MainHomeTabViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @EnvironmentObject var vmFavorirte:HomeFavoriteViewModel
    
    
    var body: some View {
        VStack{
            
            Image(x.img)
                .resizable()
                //                .aspectRatio(contentMode: .fit)
                .frame( height: 130)
                
                //                .cornerRadius(12)
                .overlay(
                    
                    HStack {
                        Label(
                            title: { Text(x.rating)
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                                .padding(.leading,-4)
                            },
                            icon: { Image( "Icon awesome-star") }
                        )
                        .padding(.horizontal,6)
                        .padding(.vertical,8)
                        .background(Color.white)
                        .clipShape(Capsule())
                        //                        .offset(x: 10.0, y: 10)
                        
                        Spacer()
                        
                        Button(action: {withAnimation{
                            vmFavorirte.addOrRemoveToFavorite(x: x)
                        }}, label: {
                            Image(vmFavorirte.checkIfFavorite(x:x) ? "Group 8440" : "Group 8441-1")
                        })
                        
                    }
                    .padding(10)
                    //                    .offset(x: 10.0, y: 10)
                    
                    
                    ,alignment:.top)
                .cornerRadius(19)
            
            
            ZStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    //                VStack {
                    //                    HStack {
                    Text(x.name)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                    
                    //                        Spacer()
                    //
                    //                        Text("50% OFF")
                    //                            .font(.system(size: 14))
                    ////                            .font(.system(size:  14))
                    //                            .fontWeight(.bold)
                    //                            .foregroundColor(ColorConstants.mainColor)
                    //                            .padding(.horizontal ,  16 )
                    //                            .padding(.vertical, 6 )
                    //                            .background(ColorConstants.mainColor.opacity(0.22))
                    //                            .clipShape(Capsule())
                    //                    }
                    HStack {
                        
                        Text("Chicken skewers ")
                            .font(.system(size: 12))
                            .fontWeight(.regular)
                            .foregroundColor(Color.black.opacity(0.6))
                            .padding(.top,4)
                        
                        Spacer()
                        
                        Text("50% OFF")
                            .font(.system(size: 14))
                            //                            .font(.system(size:  14))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.mainColor)
                            .padding(.horizontal ,  16 )
                            .padding(.vertical, 6 )
                            .background(ColorConstants.mainColor.opacity(0.22))
                            .clipShape(Capsule())
                        
                    }
                    //                    Text("Chicken skewers with slices of sweet peppers and dill")
                    //                        .font(.system(size: 12))
                    //                        .fontWeight(.regular)
                    //                        .foregroundColor(Color.black.opacity(0.6))
                    //                        .padding(.top,4)
                    
                    //                }
                    //                .padding(.ver)
                    
                    HStack {
                        
                        Label(
                            title: { Text("10 EGP") },
                            icon: { Image("delivery") }
                        )
                        Spacer()
                        
                        HStack(spacing:12){
                            
                            Text("110 EGP")
                                .font(.system(size:  15))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.mainColor)
                                .overlay(
                                    
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(ColorConstants.mainColor.opacity(0.6))
                                        .frame(height:1)
                                    
                                )
                            
                            Text("50EGP")
                                .font(.system(size: 20))
                                
                                //                    .font(.system(size: 25))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.oprice)
                            
                        }
                        
                        //                    HStack(spacing:24){
                        //
                        //                        Label(
                        //                            title: { Text("Cairo, Egypt") },
                        //                            icon: { Image("pin") }
                        //                        )
                        //
                        //                        Label(
                        //                            title: { Text("20 min") },
                        //                            icon: { Image("XMLID_1031_") }
                        //                        )
                        //
                        //                            Label(
                        //                                title: { Text("10 EGP") },
                        //                                icon: { Image("delivery") }
                        //                            )
                        //
                        //                        Spacer()
                        //                    }
                        .foregroundColor(Color.black.opacity(0.6))
                    }
                    
                    
                    
                })
                .padding(.horizontal)
                //                .padding(.bottom,24)
                .opacity(vm.isSingleItemLists==1 ? 1 : 0)
                
                if self.vm.isSingleItemLists==2 {
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        //                VStack {
                        HStack {
                            
                            Text(x.name)
                                .font(.system(size: isSmallDevice() ? 12 : 12))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.mainColor)
                            
                            //                            Spacer()
                            
                            Text("50% OFF")
                                .font(.system(size: 10))
                                
                                //                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.mainColor)
                                .padding(.horizontal,6)
                                .padding(.vertical,3)
                                .background(ColorConstants.mainColor.opacity(0.22))
                                .clipShape(Capsule())
                                .padding(.leading,isSmallDevice() ? 2 : 4)
                        }
                        
                        Text("Chicken skewers ")
                            .font(.system(size: 12))
                            //                            .font(.system(size: 12))
                            .fontWeight(.regular)
                            .lineLimit(2)
                            .foregroundColor(Color.black.opacity(0.6))
                        
                        
                        //                        HStack(){
                        //
                        //                            Label(
                        //                                title: { Text("Cairo, Egypt")
                        //                                    .font(.system(size: 10))
                        //
                        //                                },
                        //                                icon: { Image("pin") }
                        //                            )
                        //
                        //                            Spacer()
                        //
                        //                            Text("50% OFF")
                        //                                .font(.system(size: 10))
                        //                                .fontWeight(.semibold)
                        //                                .foregroundColor(ColorConstants.mainColor)
                        //                                .padding(.horizontal,8)
                        //                                .padding(.vertical,3)
                        //                                .background(ColorConstants.mainColor.opacity(0.22))
                        //                                .clipShape(Capsule())
                        //
                        //
                        //
                        //                        }
                        
                        //                        HStack(){
                        //                            Label(
                        //                                title: { Text("20 min")
                        //                                    .font(.system(size: 10))
                        //                                },
                        //                                icon: { Image("XMLID_1031_") }
                        //                            )
                        //
                        //                            Spacer()
                        //
                        //                            Label(
                        //                                title: { Text("10 EGP")
                        //                                    .font(.system(size: 10))
                        //
                        //                                },
                        //                                icon: { Image("delivery") }
                        //                            )
                        //
                        //                        }
                        
                        HStack {
                            
                            Label(
                                title: { Text("10 EGP")
                                    .font(.system(size: isSmallDevice() ? 8 : 10))
                                    
                                },
                                icon: { Image("delivery")
                                    .font(.system(size: isSmallDevice() ? 8 : 10))
                                    
                                }
                            )
                            .font(.system(size: 8))
                            
                            if !isSmallDevice() {
                                Spacer()
                                
                            }
                            HStack(spacing:isSmallDevice() ? 2 : 2){
                                
                                Text("110 EGP")
                                    .font(.system(size: isSmallDevice() ? 8 : 10))
                                    
                                    //                                    .font(.system(size:  15))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.mainColor)
                                    .overlay(
                                        
                                        RoundedRectangle(cornerRadius: 2)
                                            .fill(ColorConstants.mainColor.opacity(0.6))
                                            .frame(height:1)
                                        
                                    )
                                
                                Text("50EGP")
                                    .font(.system(size:isSmallDevice() ? 8 : 10))
                                    
                                    //                                    .font(.system(size: 20))
                                    
                                    //                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.oprice)
                                
                            }
                            .padding(.leading,4)
                        }
                    })
                    .padding(.horizontal,isSmallDevice() ? 3 : 8)//6
                    //                    .background(Color.red)
                    //                    .offset(y:-60)
                    
                }
            }
        }
        .frame(height:vm.isSingleItemLists==1 ? 250 : 240)//230
        
        //        .padding(.bottom,12)
        .background(
            RoundedRectangle(
                cornerRadius: 20
            )
            .foregroundColor(Color.white)
            .shadow(
                color: Color.gray.opacity(0.6),
                radius: 2.5,
                x: 0,
                y: 2
            )
        )
        //        .background(Color.white)
        //        .cornerRadius(20)
        //        .modifier(viewModifiers())
        //        .frame(height:vm.isSingleItemLists==1 ? 250 : 230)
        
    }
}

struct SelectedCategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedCategoryRowView()
        //        ContentView()
        //        SelectedCategoryRowView()
    }
}
