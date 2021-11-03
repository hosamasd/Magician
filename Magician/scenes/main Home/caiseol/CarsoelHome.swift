//
//  CarsoelHome.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct CarsoelHome: View {
    @ObservedObject var vm : MainHomeTabViewModel
    
    var body: some View {
        ZStack {
            // Carousel List...
            
            VStack {
                
                TabView(selection: self.$vm.categoryIndex){
                    
                    ForEach(0..<vm.carseolSwapArray.count,id: \.self){index in
                        
                        //                    CarsoelRowView(x: vm.carseolSwapArray[index])
                        Image(vm.carseolSwapArray[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                            //                    CategoryRowView(x: vm.carseolSwapArray[index],index:index, vm: vm)
                            //                    Image(vm.categoryArray[index])
                            //                        .resizable()
                            //                        // adding animation...
                            .frame(width:getFrameSize().width-32,height: self.vm.categoryIndex == index ?  170 : 120)
                            //                        .animation(.easeOut)
                            
                            .cornerRadius(19)
                        //                        .padding(.horizontal)
                        // for identifying current index....
                    }
                }
                .frame(height:170)
                //                .padding(.top,25)
                .tabViewStyle(PageTabViewStyle())
                //                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .animation(.easeOut)
                .padding(.horizontal,isSmallDevice() ? 16 : 0)
                
            }
            
            HStack {
                
                //                Button(action: {withAnimation{
                //                    print(9999)
                //                    vm.categoryIndex > 1 ?
                //                        vm.categoryIndex-=1 : ()
                //
                //                }}, label: {
                //                    Image("down arrow-1")
                //
                //
                //                })
                
                Spacer()
                
                VStack {
                    Text("Get First ")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        +
                        Text("Order")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                    
                    Text("Get ")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        
                        +
                        Text("200 EXP")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                    
                }
                .onTapGesture(perform: {
                    
                })
                
                Spacer()
                
                //                Button(action: {withAnimation{
                //                    print(9999)
                //                    vm.categoryIndex < vm.carseolSwapArray.count-1 ?
                //                        vm.categoryIndex+=1 : ()
                //                }}, label: {
                //                Image("down arrow")
                //                    .background(Color.red)
                //                   
                //                })
            }
            .padding(.horizontal,32)
            
        }
        
    }
}

struct CarsoelHome_Previews: PreviewProvider {
    //    @EnvironmentObject var vmm : HomeMainTabBarViewModel
    
    static var previews: some View {
        //    MainHomeTab(vmm: vmm, vm: MainHomeTabViewModel)
        ContentView()
        //        MainHomeTab()
    }
}
