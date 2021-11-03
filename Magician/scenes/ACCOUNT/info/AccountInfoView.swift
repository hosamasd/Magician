//
//  AccountInfoView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountInfoView: View {
    //    var na = <#value#>
    //    @ObservedObject var vm:HomeAccountViewModel
    //    @ObservedObject var vmm:HomeMainTabBarViewModel
    
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @EnvironmentObject var vm : HomeAccountViewModel
    @State var changePositions=false
    
    var body: some View {
        VStack {
            
            HomeAccountTopView()
                
                //            HomeAccountTopView(vm: vm)
                .padding(.bottom,20)
            
            VStack {
                HStack {
                    
                    Button(action: {withAnimation{vm.isAccountInfo.toggle()}}, label: {
                        Image(systemName: vmm.getBackImage())// "chevron.backward")
                            .font(.system(size: 25))
                            .foregroundColor(ColorConstants.mainColor)
                        
                    })
                    
                    Spacer()
                    
                    Text("Account info")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.mainColor)
                        .offset(x: changePositions ? 0 : -600,y:changePositions ? 0 : 200)//, y: changePositions ? 0 )
                    
                    Spacer()
                    
                }
                .padding(.horizontal,0)
                .padding(.bottom,20)
                
                
                VStack(spacing:20) {
                    CustomTF(txt: $vm.name,hint: "Name", hide: .constant(false),isAccountInfo:true)
                    
                    CustomTF(txt: $vm.email,hint: "Email", hide: .constant(false),isAccountInfo:true)
                    
                    CustomTF(txt: $vm.phone,hint: "Mobile No", hide: .constant(false),isAccountInfo:true)
                    
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        //                    vm.isOTP.toggle()
                        //                                vm.isLooding=true
                        
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(ColorConstants.mainColor)
                        .overlay(
                            
                            Text("Save")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(height:60)
                
                
            }
            .padding(.horizontal,24)
            
        }
        .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
        
        .edgesIgnoringSafeArea(.all)
        
        .onAppear(perform: {
            withAnimation{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
                    withAnimation{
                        changePositions=true
                    }
                }
            }
        })
        .onDisappear(perform: {
            withAnimation{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
                    withAnimation{
                        changePositions=false
                    }
                }
            }
        })    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
