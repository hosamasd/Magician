//
//  PaymentCosenRowView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct PaymentCosenRowView: View {
    var x = ""
    var img = ""
    
    @Binding var isSelect : Bool
    @ObservedObject var vm:HomeCheckoutViewModel
    var isFirst = false
    
    var body: some View {
        HStack {
            
            Label(
                title: { Text(x) },
                icon: {
                    if isFirst { Text("")
                    }
                        else {
                    
                Image(img)
                    }
                    }
            )
            
            Spacer()
            
            Button(action: {withAnimation{
                vm.makeCheckVisa(s: &isSelect)
//                isSelect.toggle()
            }}, label: {
                Image(isSelect ? "Group 6914-1" : "Group 6914")
            })
            
            
            
        }
        .padding(.horizontal,16)
        .frame(height:50)
        .background(Color.gray.opacity(0.05))
        .cornerRadius(6)
    }
}

struct PaymentCosenRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
    }
}
