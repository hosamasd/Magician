//
//  AccountInfoView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountInfoView: View {
//    var na = <#value#>
    @ObservedObject var vm:HomeAccountViewModel
    
    var body: some View {
        VStack {
            
            HomeAccountTopView(vm: vm)
                .padding(.bottom,20)
            
            VStack {
                HStack {
                    
                    Button(action: {withAnimation{vm.isAccountInfo.toggle()}}, label: {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 25))
                            .foregroundColor(Color("mains"))
                        
                    })
                    
                    Spacer()
                    
                    Text("Account info")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color("mains"))

                    Spacer()
                    
                }
                .padding(.horizontal,8)
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
                    
                    .fill(Color("mains"))
                    .overlay(
                        
                        Text("Save")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)//.opacity(0.6))
                    )
                
            })
            .frame(height:60)
            
                
        }
        .padding(.horizontal,16)

        }
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
