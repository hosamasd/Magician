//
//  HomeFilter.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct HomeFilter: View {
        @EnvironmentObject var vm : HomeFilterViewModel
    @EnvironmentObject var vmm : HomeMainTabBarViewModel

//    @StateObject var vm = HomeFilterViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 2)
    
    var body: some View {
        VStack {
            
            ZStack {
                
            VStack {
                    
                    HomeFilterTopView()
                    //                        .padding(.horizontal,8)
                    //                        .padding(.bottom,20)
                    
                    SecondHomeFilterTopView()
                        .padding(.vertical)
//                        .padding(.horizontal)
                    
                    
                ZStack {
                    
                    VStack {
                        
                        Spacer()
                        
                        Text("Select Your Category")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                        
                        Image("Group 8275")
                        
                        Spacer()
                        
                    }
                    .opacity(vm.selectedCategory == "" ? 1 : 0)
                    .padding(.bottom,isSmallDevice() ? 80 : 0)
                    
                 if    vm.selectedCategory != "" {
                    
                    ScrollView(showsIndicators:false){
                            
                            
                            LazyVGrid(columns: columns,spacing:12){
                                
                                // assigning name as ID...
                                
                                ForEach(vm.filterArray,id: \.name){gradient in
                                    
                                    HomeFilterRowView(x:gradient)
                                    //                                    GradientView(columns: $columns, gradient: gradient, vm: vm)
                                }
                            }
                            .padding(.horizontal)
//                            .padding(.horizontal)

                            .padding(.bottom)
                            .padding(.bottom,isSmallDevice() ? 80 : 100)
                        }
                    .padding(.top,-12)
                    .transition(.move(edge: .leading))
//                    .padding(.bottom,isSmallDevice() ? 80 : 100)
                    
                 }
                }
                    
                }
                .padding(.horizontal,32)
                    
                    if vm.isLooding {
                        LoadingCapsuleSpacing()
                    }
            }
            
        }
        .environmentObject(vmm)
        .environmentObject(vm)
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
            .onAppear(perform: {
                vm.filterArray.isEmpty ? vm.getData() : ()
            })
        
    }
}

struct HomeFilter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
