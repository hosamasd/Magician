//
//  HomeCheckoutAddVisa.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutAddVisa: View {
    //    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @ObservedObject var vm:HomeCheckoutViewModel
    @State var isFirst=false
    @State var isSecond=false
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    
    var body: some View {
        ScrollView(isSmallDevice() ? .vertical : .init(), showsIndicators: false, content: {
            VStack {
                
                HomeCheckoutAddVisaTopView(vm: vm)
                    .padding(.horizontal,24)
                VStack {
                    VStack {
                        HomeCheckoutAddVisaAddVisa(vm:vm)
                        
                        
                        LazyVGrid(columns: columns,spacing:12){
                            
                            PaymentCosenRowView(x: "Cash on delivery", img: "NoPath - Copy ", isSelect: $vm.isCashOnDelivery,vm: vm)
                            
                            PaymentCosenRowView(x: "**** **** **** 2187", img: "NoPath - Copy", isSelect: $vm.isFirstVisa,vm: vm)
                            
                            PaymentCosenRowView(x: "johndoe@email.com", img: "NoPath - Copy (2)", isSelect: $vm.isSecondVisa,vm: vm)
                            
                            
                        }
                        .padding(.vertical)
                        //                    .background(Color.gray.opacity(0.05))
                        
                    }
                    .padding(.horizontal,24)
                    .padding(.vertical)
                    //                    .background(Color.gray.opacity(0.05))
                    
                }
                .padding(.vertical)
                //                .background(Color.red)
                .background(Color.gray.opacity(0.1))
                
                //                .background(Color.gray.opacity(0.1))
                //                .padding(.horizontal,-24)
                
                VStack(alignment:.leading,spacing:20) {
                    
                    HStack {
                        Text("Sub Total")
                            .font(.boldCustomFontSystem(size: 15))
                        
                        Spacer()
                        
                        Text("$68")
                            .font(.boldCustomFontSystem(size: 14))
                            .fontWeight(.bold)
                        
                        
                    }
                    
                    HStack {
                        Text("Delivery Cost")
                            .font(.boldCustomFontSystem(size: 15))
                        
                        Spacer()
                        
                        Text("$2")
                            .font(.boldCustomFontSystem(size: 14))
                            .fontWeight(.bold)
                        
                        
                    }
                    
                    HStack {
                        Text("Discount")
                            .font(.boldCustomFontSystem(size: 15))
                        
                        Spacer()
                        
                        Text("-$2")
                            .font(.boldCustomFontSystem(size: 14))
                            .fontWeight(.bold)
                        
                        
                    }
                    
                    Divider()
                    
                    
                    HStack {
                        Text("Total")
                            .font(.boldCustomFontSystem(size: 15))
                        
                        Spacer()
                        
                        Text("$68")
                            .font(.boldCustomFontSystem(size: 14))
                            .fontWeight(.bold)
                        
                        
                    }
                }
                .padding(.horizontal,24)
                .padding(.top)
                Spacer()
                
                Button(action: {
                    withAnimation{
                        vm.isOperationSheetDone.toggle()

                        //                        vm.isCheckOut.toggle()
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text(LocalizedStringKey("Send order"))
                                .font(.customFontSystem(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
                .padding(.horizontal,24)
                //                .padding(.horizontal)
                //                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            }
        })
        //        .padding(.horizontal,24)
    }
}

struct HomeCheckoutAddVisa_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
        //        SContentView()
        
    }
}
