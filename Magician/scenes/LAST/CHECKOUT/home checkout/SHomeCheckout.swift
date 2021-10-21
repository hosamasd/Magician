//
//  SHomeCheckout.swift
//  Magician
//
//  Created by hosam on 21/10/2021.
//

import SwiftUI

struct SHomeCheckout: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    @Binding var isShow:Bool
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    var xx = [
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        
    ]
    
    @StateObject var vm = HomeCheckoutViewModel()
    
    var body: some View {
        //        ZStack {
        VStack {
            
            
            HomeCheckoutTopView(vm:vm,isShow: $isShow)
            
            //                ZStack {
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        HomeCheckoutItemRowView(x:x)
                        
                        
                        LazyVGrid(columns: columns,spacing:12){
                            
                            // assigning name as ID...
                            
                            ForEach(xx){index in
                                HomeCheckoutRowView(x:index)
                            }
                        }
                        
                        .padding(.top,40)
                        
                        VStack(alignment:.leading,spacing:16) {
                            
                            HStack {
                                Text("Sub Total")
                                    .font(.boldCustomFontSystem(size: 15))
                                
                                Spacer()
                                
                                Text("$68")
                                    .font(.boldCustomFontSystem(size: 14))
                                    .fontWeight(.bold)
                                    
                                    .foregroundColor(Color("mains"))
                                
                            }
                            
                            HStack {
                                Text("Delivery Cost")
                                    .font(.boldCustomFontSystem(size: 15))
                                
                                Spacer()
                                
                                Text("$2")
                                    .font(.boldCustomFontSystem(size: 14))
                                    .fontWeight(.bold)
                                    
                                    .foregroundColor(Color("mains"))
                                
                            }
                            
                            Divider()
                            
                            
                            HStack {
                                Text("Total")
                                    .font(.boldCustomFontSystem(size: 15))
                                
                                Spacer()
                                
                                Text("$70")
                                    .font(.boldCustomFontSystem(size: 14))
                                    .fontWeight(.bold)
                                    
                                    .foregroundColor(Color("mains"))
                                
                            }
                        }
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal,24)
                    .padding(.top)
                    
                    
                }
                .padding(.bottom)
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        //                                isShow.toggle()
                        //                                vm.isTrackMyOrder.toggle()
                        vm.isCheckOut.toggle()
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text(LocalizedStringKey("Checkout"))
                                .font(.customFontSystem(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
                .padding(.horizontal)
                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            }
        }
        
        //        .environmentObject(vmm)
        //        .environmentObject(vm)
        
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
//        
//        .alert(isPresented: $vm.isChangeAddress, AlertConfig(title: "Change Address", action: {
//            //                    print("Text \($0 ?? "Cancelled")")
//            vm.address=$0 ?? ""
//        }))
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isCheckOut, content: {
                            HomeCheckoutAddVisa(vm: vm)
                        })
        )
        .background(EmptyView()
                        .fullScreenCover(isPresented: $vm.isTrackMyOrder, content: {
                                                    HomeTrackOrder(vm: vm)
                        })
        )
        
    }
}


struct SHomeCheckout_Previews: PreviewProvider {
    static var previews: some View {
        SHomeCheckout(isShow: .constant(false))
    }
}
