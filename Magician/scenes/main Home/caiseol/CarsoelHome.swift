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
                    
                    CarsoelRowView(x: vm.carseolSwapArray[index])
//                    CategoryRowView(x: vm.carseolSwapArray[index],index:index, vm: vm)
                    //                    Image(vm.categoryArray[index])
                    //                        .resizable()
                    //                        // adding animation...
                    //                        .frame(height: self.vm.categoryIndex == index ?  170 : 120)
                    //                        .cornerRadius(15)
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
                        .font(.customFontSystem(size: 30))
                        .fontWeight(.bold)
                        +
                        Text("Order")
                        .font(.customFontSystem(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color("mains"))
                    
                    Text("Get ")
                        .font(.customFontSystem(size: 22))
                        .fontWeight(.bold)
                        
                        +
                        Text("200 EXP")
                        .font(.customFontSystem(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color("mains"))
                       
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
