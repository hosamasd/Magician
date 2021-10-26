//
//  AccountRowView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountRowView: View {
    @ObservedObject var vm :HomeAccountViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    var name = "Account info"
    //    var is = <#value#>
    
    var isCheck = false
    var isText = false
    var isOriginal = true
    var isLogout = false
    var isChangeLanguage = false

    var body: some View {
        VStack{
            
            HStack {
                
                Text(LocalizedStringKey(name))
                    .font(.system(size: 14))
                    
                    //                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)//.opacity(0.6))

                
                
                
                
                
                Spacer()
                
                ZStack {
                    
                    if isCheck {
                        
                        Button(action: {withAnimation{
                            vm.isNotfyOn.toggle()
                        }}, label: {
                            Image(vm.isNotfyOn ? "Group 8312" : "Rectangle 17387")
                            
                        })
                    }
                    
                    if isText {
                        
                        Text(LocalizedStringKey("300$"))
                            .font(.system(size: 15))
                            
                            //                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("mains"))
                    }
                    if isOriginal {
                        Button(action: {}, label: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(.black)
                        })
                    }
                    
                    if isChangeLanguage {
                        
                        Menu {
                            VStack {
                                
                                
                                Button(action: {
                                    withAnimation{
                                        print(123)
                                    }
                                }, label: {
                                    
                                    Label(
                                        title: {
                                            Text(LocalizedStringKey("Eng"))
                                                .foregroundColor(.black)
                                        },
                                        icon: {
                                            Image("united-states-of-america-flag-3d-icon-16")
                                            
                                        }
                                    )
                                    
                                    
                                    
                                })
                                //                                .background(Color.black)
                                
                                Button(action: {
                                    withAnimation{
                                        print(123)
                                        
                                    }
                                    
                                }, label: {
                                    
                                    Label(
                                        title: {
                                            Text(LocalizedStringKey("AR"))
                                                .foregroundColor(.black)
                                            
                                            
                                        },
                                        icon: {
                                            Image( "egypt-flag-3d-icon-16")
                                        }
                                    )
                                    
                                    
                                    
                                    
                                })
                            }
                            
                        } label: {
                            Button(action: {
                                withAnimation{
                                    print(123)
                                }
                            }, label: {
                                
                                //                                        Image("united-states-of-america-flag-3d-icon-16")
                                
                                Text(LocalizedStringKey(vmm.getAppLanguage()))
                                    .foregroundColor(.black)
                                
                            })
                        }
                        
                        
                    }
                    
                    if isLogout {
                        Spacer(minLength: 0)
                    }
                }
                
            }
            .padding(.horizontal,32)
            
        }
        .background(Color.white)
    }
}

struct AccountRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccount()
//        AccountRowView(vm: HomeAccountViewModel())
    }
}
