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
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                
                HomeTrackOrderAnimated()
                    .padding(.horizontal,24)
                    .padding(.top,20)
                    .frame(height:getFrameSize().height/2)
                
                HomeTrackOrderRowView(vm:vm)
                
                Divider()
                    .padding(.horizontal,48)
                
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
            .padding(.bottom,20)
            
        }
    }
}

struct HomeTrackOrder_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
        
        //        HomeTrackOrder()
    }
}
