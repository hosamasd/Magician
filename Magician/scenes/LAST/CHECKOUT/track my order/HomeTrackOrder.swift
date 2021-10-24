//
//  HomeTrackOrder.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeTrackOrder: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    
    var body: some View {
        //        ScrollView(.vertical, showsIndicators: false) {
        //            VStack {
        
        VStack {
            
//            HStack{
//
//                HStack (spacing:16){
//                    Button(action: {withAnimation{
//                     vm.isTrackMyOrder.toggle()
//                    }}, label: {
//                        //                Image(systemName: vmm.getBackImage())
//                        Image(systemName: "chevron.backward")
//                    })
//                    .foregroundColor(.black)
//
//                    Text(LocalizedStringKey(  "Checkout" ))
//                        .font(.boldCustomFontSystem(size: 27))
//                        .fontWeight(.bold)
//                }
//
//                Spacer()
//
//            }
//            .padding(.top,getSafeArea()?.top)
//            .padding(.horizontal,24)//16
            
            //            HomeCheckoutTopView(vm:vm,isShow: $isShow)
            
            //                ZStack {
            
//            VStack {
//                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        HomeTrackOrderAnimated()
//                            .padding(.horizontal,24)
                            .padding(.top,20)
                            .frame(height:getFrameSize().height/2)
                        
                        HomeTrackOrderRowView(vm:vm)
                        
//                        Divider()
//                            .padding(.horizontal,48)
                        
                        VStack {
                            
                            
                            LazyVGrid(columns: columns,spacing:12){
                                
                                // assigning name as ID...
                                
                                ForEach(vm.ordersArray){index in
                                    HomeTrackOrdersRowView(x:index)
                                    //                        HomeCheckoutRowView(x:index)
                                }
                                
                                
                                HomeTrackOrdersRowView( isDelvery: true)
                                
                                HomeTrackOrdersRowView( isTotal: true)
                                
                            }
                            
                            .padding(.top,10)
                            
                            
                        }
                        
                    }
                    .padding(.horizontal,24)
                    .padding(.top)
                    
                    
//                }
//                .padding(.bottom)
//
//                Spacer()
//
//                Button(action: {
//                    withAnimation{
//                        //                                isShow.toggle()
//                        //                                vm.isTrackMyOrder.toggle()
//                        vm.isCheckOut.toggle()
//                    }
//                }, label: {
//                    RoundedRectangle(cornerRadius: 28)
//
//                        .fill(Color("mains"))
//                        .overlay(
//
//                            Text(LocalizedStringKey("Send Order"))
//                                .font(.customFontSystem(size: 16))
//                                .fontWeight(.semibold)
//                                .foregroundColor(Color.white)//.opacity(0.6))
//                        )
//
//                })
//                .frame(height:60)
//                .padding(.horizontal)
//                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
//            }
        }
        
        //        .environmentObject(vmm)
        //        .environmentObject(vm)
        
//        .background(Color("bg"))
//        .edgesIgnoringSafeArea(.all)
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
        //            .padding(.bottom,20)
        
        
    }
}

struct HomeTrackOrder_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false))
        
        //        HomeTrackOrder()
    }
}
