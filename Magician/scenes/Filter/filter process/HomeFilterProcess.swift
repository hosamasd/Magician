//
//  HomeFilterProcess.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeFilterProcess: View {
        @EnvironmentObject var vm : HomeFilterViewModel
    //    @EnvironmentObject var vmm : HomeMainTabBarViewModel
    
//    @StateObject var vm = HomeFilterViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    var sColumns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 3)
    
    var body: some View {
        VStack {
            
            HomeFilterProcessTopView()
            
            VStack {
                
                HomeFilterProcessMainChoise()
                
                ScrollView(isSmallDevice() ?  .vertical : .init(), showsIndicators: false) {
                    
                    // Pinned View...
                    
                    if !vm.pinnedViewsArray.isEmpty{
                        
                        LazyVGrid(columns: sColumns,spacing: 8){
                            
                            ForEach(vm.pinnedViewsArray,id:\.name){pinned in
                                
                                HomeFilterProcessPinnedRowView(x:pinned)
                            }
                            
                        }
                        .padding(.top)
                        .padding()
                        
                    }
                    
                    ZStack {
                        LazyVGrid(columns: columns,spacing:12){
                            
                            ForEach( vm.popularArray ,id:\.name) {index in
                                HomeFilterProcessPoplurRowView(x:index)
                            }
                        }
                        .opacity(vm.isFirst ? 1 : 0)
                        .transition(.move(edge: .trailing))
                        
                        
                        if vm.isSecond{
                            LazyVGrid(columns: columns,spacing:12){
                                
                                ForEach( vm.sortArray ,id:\.name) {index in
                                    HomeFilterProcessPoplurRowView(x:index)
                                }
                            }
                            //                    }
                            .transition(.move(edge: .trailing))
                            //                    .opacity(vm.isSecond ? 1 : 0)
                            
                        }
                    }
                    .padding()
                    .padding(.top)
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            //                            vm.isLooding=true
                            //                        vm.makeLogin()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(Color("mains").opacity(vm.pinnedViewsArray.isEmpty ? 0.3 : 1))
                            .overlay(
                                
                                Text(LocalizedStringKey("Apply "))
                                    .font(.customFontSystem(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .disabled(vm.pinnedViewsArray.isEmpty ? true : false)
                    .padding(.horizontal,42)
                    .frame(height:60)
                    .padding(.bottom,bottomSafeArea(x: 30.0,y: 0.0) )
                    
                }
                
                
            }
            .padding(.top,40)
            
        }
        .edgesIgnoringSafeArea(.all)
        .environmentObject(vm)
    }
}

struct HomeFilterProcess_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterProcess()
    }
}
