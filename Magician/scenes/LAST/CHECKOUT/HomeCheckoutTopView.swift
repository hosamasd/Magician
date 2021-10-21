//
//  HomeCheckoutTopView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct HomeCheckoutTopView: View {
    //    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    @ObservedObject var vm:HomeCheckoutViewModel
    @Binding var isShow:Bool
    var body: some View {
        HStack{
            
            HStack (spacing:16){
                Button(action: {withAnimation{
                    isShow.toggle()
//                    vm.isCheckOut ? vm.isCheckOut.toggle() :
//                        vm.isOperationSheetDone ? vm.isOperationSheetDone.toggle() :  isShow.toggle()
                }}, label: {
                    //                Image(systemName: vmm.getBackImage())
                    Image(systemName: "chevron.backward")
                })
                .foregroundColor(.black)
                
                Text(LocalizedStringKey("My Order"))
                        
//                        vm.isCheckOut ? "Checkout" : vm.isTrackMyOrder ? "Back" : "My Order"))
                    .font(.boldCustomFontSystem(size: 27))
                    .fontWeight(.bold)
            }
            
            Spacer()
            
        }
        .padding(.top,getSafeArea()?.top)
        .padding(.horizontal,24)//16
    }
}

struct HomeCheckoutTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCheckout(isShow: .constant(false))
    }
}
