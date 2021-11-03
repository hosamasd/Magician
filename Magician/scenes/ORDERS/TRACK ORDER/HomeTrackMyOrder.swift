//
//  HomeTrackMyOrder.swift
//  Magician
//
//  Created by hosam on 25/10/2021.
//

import SwiftUI

struct HomeTrackMyOrder: View {
    
    @EnvironmentObject var vm:HomeCheckoutViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    //    @ObservedObject var vm:HomeCheckoutViewModel
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    
    func goTOhOME()  {
        vmm.goToMainTab()
    }
    
    var body: some View {
        
        VStack {
            
            HStack{
                
                HStack (spacing:16){
                    Button(action: {withAnimation{goTOhOME()  }}, label: {
                        //                Image(systemName: vmm.getBackImage())
                        Image(systemName: "chevron.backward")
                    })
                    .foregroundColor(.black)
                    
                    Text(LocalizedStringKey( "Back" ))
                        .font(.system(size: 27))
                        .fontWeight(.bold)
                }
                
                Spacer()
                
            }
            .padding(.top,getSafeArea()?.top)
            .padding(.horizontal,24)//16
            
            //            HomeCheckoutTopView(vm:vm,isShow: $isShow, isShowMainParent: $isShowMainParent)
            //                .environmentObject(vmm)
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        
                        VStack {
                            HomeTrackOrderAnimated()
//                                .padding(.top,20)
                                .frame(height:getFrameSize().height/1.5)
                                //                            .padding(.horizontal,24)
//                                .padding(.top,20)
//                                .frame(height:isSmallDevice() ?  getFrameSize().height/1.5 : getFrameSize().height/2)
                            //                                .frame(height:500)//isSmallDevice() ?  getFrameSize().height/1.5 : getFrameSize().height/2)
                            
                            HomeTrackOrderRowView(vm:vm)
                                .padding(.top,isSmallDevice() ?  -60 : -180)

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
                        
                        
                    }
                    
                }
                .padding(.bottom)
                
            }
            
        }
        .background(ColorConstants.bg)
        .edgesIgnoringSafeArea(.all)
    }
    
    
}

struct HomeTrackMyOrder_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        HomeTrackMyOrder()
    }
}
