//
//  HomeCategoryView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct HomeCategoryView: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @ObservedObject var vm : MainHomeTabViewModel
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                Text("Categories")
                    .foregroundColor(.black)
                    .font(.customFontSystem(size: 18))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {withAnimation{}}, label: {
                    Label(
                        title: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(Color("mains"))
                                .padding(.leading,-6)
                            
                        },
                        icon: {
                            Text("View All")
                                .font(.customFontSystem(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
                        }
                    )
                })
            }
            .padding(.horizontal)
            .padding(.top, 15)
            .padding(.bottom,4)
            
            // Carousel List...
            
            VStack {
                TabView(selection: self.$vm.categoryIndex){
                    
                    ForEach(0..<vm.categoryArray.count,id: \.self){index in
                        
                        CategoryRowView(x: vm.categoryArray[index],index:index, vm: vm)
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
                
                HStack {
                    
                    Spacer()
                    
                    
                    
                    Spacer()
                    
                }
            }
        }
        .onAppear {
            setupAppearance()
        }
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color("mains"))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color("mains")).withAlphaComponent(0.2)
    }
}

struct HomeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTab()
    }
}
