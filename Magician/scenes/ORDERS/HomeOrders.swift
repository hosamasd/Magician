//
//  HomeOrders.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeOrders: View {
    //    @StateObject var vm = HomeOrdersViewModel()
    @EnvironmentObject var vm : HomeOrdersViewModel
    
    @EnvironmentObject var vmm : HomeMainTabBarViewModel
    @EnvironmentObject var vms : HomeCheckoutViewModel

    @State var isSelectItem=false
    @State var isSelectItemTrack=false

    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    
    var body: some View {
        VStack {
            
            VStack {
                
                //                HomeOrdersTopView(vm:vm)
                HomeOrdersTopView()
                    .environmentObject(vm)
                
                ScrollView(showsIndicators:false){
                    
                    
                    LazyVStack(alignment: .center, spacing: 16) {
                        //                            VStack(spacing: 20){
                        
                        ForEach(vm.ordersArray){msg in
                            
                            OrderRowView(x: msg)
                                .frame(width:getFrameSize().width-28)
                                .onTapGesture(perform: {getDistination(msg: msg)
                                    
                                   
//                                    selectedItem=OfferModel(name: msg.name, img: msg.img, subImg: msg.img, type: msg.name, location: msg.desc, rating: msg.price)
//                                    isSelectItem=true
                                })
                            
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
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItemTrack, content: {
                                            HomeTrackMyOrder()
                                                .environmentObject(vmm)
                                                .environmentObject(vms)
                                              })
        )
        
    }
    
    func getDistination(msg:OrderMmodel)  {
        if !msg.isOrdered {
            isSelectItemTrack=true
            
        }else {
            selectedItem=OfferModel(name: msg.name, img: msg.img, subImg: msg.img, type: msg.name, location: msg.desc, rating: msg.price)
            isSelectItem=true
        }
    }
    
    func getBottomSpace() ->CGFloat {
        CGFloat( isSmallDevice() ? 80 : 100)
        
        //       CGFloat( isSmallDevice() ? 130 : 100)
    }
}

//struct HomeOrders_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeOrders()
////        ContentView()
////        HomeOrders()
//    }
//}
