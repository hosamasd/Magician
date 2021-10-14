//
//  AccountRowView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct AccountRowView: View {
    @ObservedObject var vm :HomeAccountViewModel

    var name = "Account info"
    //    var is = <#value#>
    
    var isCheck = false
    var isText = false
    var isOriginal = true
    
    var body: some View {
        VStack{
            
            HStack {
                
                Text(name)
                    .font(.customFontSystem(size: 14))

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
                        
                        Text("300$")
                            .font(.customFontSystem(size: 15))

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
                }
                
            }
            .padding(.horizontal,32)
            
        }
        .background(Color.white)
    }
}

struct AccountRowView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRowView(vm: HomeAccountViewModel())
    }
}
