//
//  HomeOrders.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeOrders: View {
    @StateObject var vm = HomeOrdersViewModel()

    var body: some View {
        VStack {
            
            VStack {
                
            HomeOrdersTopView(vm:vm)
            
            ScrollView(showsIndicators:false){
                
                    
                    LazyVStack(alignment: .center, spacing: 16) {
                        //                            VStack(spacing: 20){
                        
                        ForEach(vm.ordersArray){msg in
                            
                            OrderRowView(x: msg)
                                .frame(width:getFrameSize().width-28)

                        }
                        
                    }
                    .padding(.top,20)
                    .frame(width:getFrameSize().width-28)
                    .padding(.bottom,getBottomSpace())

            
                
            }
            
        }
        .padding(.horizontal,32)

//            .padding(.bottom,getBottomSpace())
            Spacer()
        }
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
        
    }
    
    func getBottomSpace() ->CGFloat {
       CGFloat( isSmallDevice() ? 130 : 100)
    }
}

//struct HomeOrders_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeOrders()
////        ContentView()
////        HomeOrders()
//    }
//}
