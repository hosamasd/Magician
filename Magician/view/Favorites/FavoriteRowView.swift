//
//  FavoriteRowView.swift
//  Magician
//
//  Created by hosam on 17/10/2021.
//

import SwiftUI

struct FavoriteRowView: View {
    @EnvironmentObject var vm:HomeFavoriteViewModel
    
    var x =                 OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5",isFavorite:true)
    
    var body: some View {
        VStack{
            
            Image(x.img)
                .resizable()
                //                .aspectRatio(contentMode: .fit)
                .frame( height: 130)
                .cornerRadius(20)
                
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
                            vm.addOrRemoveToFavorite(x: x)
                        }}, label: {
                            Image( "Group 8440")
                        })
                        
                    }
                    .padding(10)
//                    Label(
//                        title: { Text(x.rating)
//                            .font(.system(size: 10))
//                            .foregroundColor(.black)
//                            .padding(.leading,-4)
//                        },
//                        icon: {
//                            
//                            Button(action: {withAnimation{
//                                vm.addOrRemoveToFavorite(x: x)
//                                
//                            }}, label: {
//                                Image( "Icon awesome-star")
//                            })
//                        }
//                    )
//                    .padding(.horizontal,6)
//                    .padding(.vertical,8)
//                    .background(Color.white)
//                    .clipShape(Capsule())
//                    .offset(x: 10.0, y: 10)
                    
                    ,alignment:.top)//topLeading
                .cornerRadius(19)
            
            
            ZStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    //                VStack {
                    HStack {
                        Text(x.name)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                        
                        Spacer()
                        
                        Text("50% OFF")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                            .padding(.horizontal)
                            .padding(.vertical,6)
                            .background(Color("mains").opacity(0.22))
                            .clipShape(Capsule())
                            .unredacted()//for keep not shimmer
                    }
                    
                    
                    Text("Chicken skewers with slices of sweet peppers and dill")
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(.top,4)
                    
                    //                }
                    //                .padding(.ver)
                    
                    HStack(spacing:24){
                        
                        Label(
                            title: { Text("Cairo, Egypt") },
                            icon: { Image("pin") }
                        )
                        
                        Label(
                            title: { Text("20 min") },
                            icon: { Image("XMLID_1031_") }
                        )
                        
                        Label(
                            title: { Text("10 EGP") },
                            icon: { Image("delivery") }
                        )
                        
                        Spacer()
                    }
                    .foregroundColor(Color.black.opacity(0.6))
                    
                    
                    
                })
                .padding(.horizontal)
                .padding(.bottom,20)
                //                .padding(.bottom,24)
                .opacity(vm.isSingleItemLists==1 ? 1 : 0)
                
                if self.vm.isSingleItemLists==2 {
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        //                VStack {
                        HStack {
                            
                            Text(x.name)
                                .font(.system(size: isSmallDevice() ? 12 : 12))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
                            
                            //                            Spacer()
                            
                            Text("50% OFF")
                                .font(.system(size: 10))
                                
                                //                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("mains"))
                                .padding(.horizontal,6)
                                .padding(.vertical,3)
                                .background(Color("mains").opacity(0.22))
                                .clipShape(Capsule())
                                .padding(.leading,CGFloat(isSmallDevice() ? 2 : 4))
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
                        //                                .foregroundColor(Color("mains"))
                        //                                .padding(.horizontal,8)
                        //                                .padding(.vertical,3)
                        //                                .background(Color("mains").opacity(0.22))
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
                            HStack(spacing:CGFloat(isSmallDevice() ? 2 : 2)){
                                
                                Text("110 EGP")
                                    .font(.system(size: isSmallDevice() ? 8 : 10))
                                    
                                    //                                    .font(.system(size:  15))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("mains"))
                                    .overlay(
                                        
                                        RoundedRectangle(cornerRadius: 2)
                                            .fill(Color("mains").opacity(0.6))
                                            .frame(height:1)
                                        
                                    )
                                
                                Text("50EGP")
                                    .font(.system(size:isSmallDevice() ? 8 : 10))
                                    
                                    //                                    .font(.system(size: 20))
                                    
                                    //                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("oprice"))
                                
                            }
                            .padding(.leading,4)
                        }
                    })
                    .padding(.horizontal,CGFloat(isSmallDevice() ? 3 : 8))//6
                    //                    .background(Color.red)
                    //                    .offset(y:-60)
                    
                }
            }
            .frame(height:CGFloat(vm.isSingleItemLists==1 ? 120 : 80))//230
            
        }
        //        .frame(height:vm.isSingleItemLists==1 ? 250 : 250)//230
        
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
//        .redacted(reason: .placeholder)//for shimmer
        
        //                if self.vm.isSingleItemLists==2 {
        //
        //                    VStack(alignment: .leading, spacing: 12, content: {
        //                        //                VStack {
        //                        Text(x.name)
        //                            .font(.system(size: 15))
        //                            .fontWeight(.bold)
        //                            .foregroundColor(Color("mains"))
        //
        //                        Text("Chicken skewers with slices of sweet peppers and dill")
        //                            .font(.system(size: 12))
        //                            .fontWeight(.regular)
        //                            .lineLimit(2)
        //                            .foregroundColor(Color.black.opacity(0.6))
        //                            .padding(.top,4)
        //
        //
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
        //                                .foregroundColor(Color("mains"))
        //                                .padding(.horizontal)
        //                                .padding(.vertical,6)
        //                                .background(Color("mains").opacity(0.22))
        //                                .clipShape(Capsule())
        //
        //
        //
        //                        }
        //
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
        //                    })
        //                    .padding(.horizontal,12)
        ////                    .background(Color.red)
        ////                    .offset(y:-60)
        //
        //                }
        //            }
        //        }
        //        //        .padding(.bottom,12)
        //        .background(Color.white)
        //        .cornerRadius(20)
        //        .modifier(viewModifiers())
        //        .frame(height:vm.isSingleItemLists==1 ? 250 : 300)
    }
}

struct FavoriteRowView_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        FavoriteRowView()
    }
}
