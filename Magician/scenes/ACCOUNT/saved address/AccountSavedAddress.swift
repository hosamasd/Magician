//
//  AccountSavedAddress.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountSavedAddress: View {
    @ObservedObject var vm:HomeAccountViewModel
    @ObservedObject var vmm:HomeMainTabBarViewModel
    
    var names = "Saved addresses"
    
    var name : Namespace.ID
    @State var changePositions=false
    
    var body: some View {
        ZStack {
            VStack {
                
                HomeAccountTopView(vm: vm)
                    .padding(.bottom,20)
                
                VStack {
                    HStack {
                        
                        Button(action: {withAnimation{vm.isSavedAddress.toggle()}}, label: {
                            Image(systemName: vmm.getBackImage())//"chevron.backward")
                                .font(.customFontSystem(size: 25))
                                .foregroundColor(Color("mains"))
                            
                        })
                        
                        Spacer()
                        
                        Text(names)
                            .font(.customFontSystem(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                            .matchedGeometryEffect(id: names, in: name)
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal,8)
                    .padding(.bottom,20)
                    .offset(x: changePositions ? 0 : -600)//, y: changePositions ? 0 )
                    
                    
                    
                    VStack(spacing:20) {
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                        CustomTF(txt: $vm.address,hint: "Address", hide: .constant(false),isAccountInfo:true,isSavedAddress: true)
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{vm.isAddAddressSheet.toggle()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 28)
                            
                            .fill(Color("mains"))
                            .overlay(
                                
                                Text("Add New Address")
                                    .font(.customFontSystem(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)//.opacity(0.6))
                            )
                        
                    })
                    .frame(height:60)
                    
                    
                }
                .padding(.horizontal,24)
                
            }
            .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
            
            if vm.isAddAddressSheet {
                
                AddAddressSheetView(vm: vm)
                    //                    .environmentObject(vmm)
                    .transition(.move(edge: .bottom))
                
                
            }
            
            if vm.isSHowLocation {
                //                LoadingCircleOpacity()
                LocationView(dismiss: $vm.isSHowLocation, locationText: $vm.newAddedAddress,isAdd:true)
                    //                LocationView(  locationText: $vm.newAddedAddress )
                    //                    .environmentObject(vm)
                    .transition(.move(edge: .bottom))
                
            }
            //            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            withAnimation{
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.3) {
                    withAnimation{
                        changePositions=true
                    }
                }
            }
        })
        
    }
}

struct AccountSavedAddress_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
