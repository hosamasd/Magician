//
//  SHomeCheckoutAddVisa.swift
//  Magician
//
//  Created by hosam on 24/10/2021.
//

import SwiftUI

struct SHomeCheckoutAddVisa: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    @State var isFirst=false
    @State var isSecond=false
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    
    var body: some View {
        
        
        
        
        VStack {
            //        ScrollView(isSmallDevice() ? .vertical : .init(), showsIndicators: false, content: {
            //            VStack {
            
            AddVisaChangeAddressView(vm: vm)
                .padding(.horizontal,24)
                .background(Color.white)
            
            VStack {
                VStack {
                    HomeCheckoutAddVisaAddVisa(vm:vm)
                    
                    
                    LazyVGrid(columns: columns,spacing:12){
                        
                        PaymentCosenRowView(x: "Cash on delivery", img: "NoPath - Copy ", isSelect: $vm.isCashOnDelivery,vm: vm,isFirst: true)
                        
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
            //                            .background(Color.gray.opacity(0.1))
            
            //                .background(Color.gray.opacity(0.1))
            //                .padding(.horizontal,-24)
            
            VStack(alignment:.leading,spacing:20) {
                
                HStack {
                    Text(LocalizedStringKey("Sub Total"))
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Text("$68")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                }
                
                HStack {
                    Text(LocalizedStringKey("Delivery Cost"))
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Text("$2")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                }
                
                HStack {
                    Text(LocalizedStringKey("Discount"))
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Text("-$2")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                }
                
                Divider()
                
                
                HStack {
                    Text(LocalizedStringKey("Total"))
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Text("$68")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                }
            }
            .padding(.horizontal,24)
            .padding(.top,30)
            .padding(.bottom)
            
        }
        
        //        .padding(.horizontal,24)
        //        
        //        .padding(.top)
        
//        .alert(isPresented: $vm.isChangeAddress, AlertConfig(title: "Change Address", action: {
//            //                    print("Text \($0 ?? "Cancelled")")
//            vm.address=$0 ?? ""
//        }))
    }
}

struct SHomeCheckoutAddVisa_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
        //        SHomeCheckoutAddVisa()
    }
}
