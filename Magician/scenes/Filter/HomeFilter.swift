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
    
    @State var isSelectItem=false
    @State var selectedItem = OfferModel(name: "", img: "", subImg: "", type: "", location: "", rating: "")
    
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
                            
                            VStack {
                                Text("Select Your Category")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("mains"))
                                
                                
                                Image("Group 8275")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                //                                .frame(height:getFrameSize().height/5)
                                //                                .padding(.leading)
                                
                            }
                            .frame(width:getFrameSize().width-94)//,height:getFrameSize().height/8)
                            
                            Spacer()
                            
                        }
                        .opacity(vm.selectedCategory == "" ? 1 : 0)
                        .padding(.bottom)
                        .padding(.horizontal)
                        
                        //                        .frame(height:getFrameSize().height/3)
                        
                        //                        .padding(.bottom,isSmallDevice() ? 80 : 100)
                        //                        .padding(.bottom,isSmallDevice() ? 80 : 0)
                        
                        if    vm.selectedCategory != "" {
                            
                            ScrollView(showsIndicators:false){
                                
                                
                                LazyVGrid(columns: columns,spacing:12){
                                    
                                    // assigning name as ID...
                                    
                                    ForEach(vm.getDatas(),id: \.name){gradient in
                                        
                                        HomeFilterRowView(x:gradient)
                                            .onTapGesture(perform: {
                                                selectedItem=gradient
                                                isSelectItem=true
                                            })
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
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isSelectItem, content: {
                                            SelectedItemScenes(isShow:  $isSelectItem,selectedItem:selectedItem)  })
        )
    }
}

struct HomeFilter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
