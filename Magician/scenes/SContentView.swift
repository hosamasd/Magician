//
//  SContentView.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SContentView: View {
    @StateObject var vm = HomeMainTabBarViewModel()
    @StateObject var vms = HomeFilterViewModel()
    @StateObject var vmss = HomeOrdersViewModel()
    @StateObject var vmsss = MainHomeTabViewModel()
    @StateObject var vmfa = HomeFavoriteViewModel()

    @StateObject var wqq = HomeAccountViewModel()
    
    @StateObject var vmt=HomeCheckoutViewModel()

    var body: some View {
       
        MainHomeReg()
//        OverlayDemo()
//        SSSSSSS()
//        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))

//        HomeCheckoutSheetView(vm: HomeCheckoutViewModel())
        
//        MainHomeTab()
//            .environmentObject(vmt)
//                   .environmentObject(vm)
            .environmentObject(vm)

//            .environment(\.layoutDirection,  .leftToRight )
//            .environment(\.locale, Locale(identifier: "en" ))
            
//            .environment(\.layoutDirection,  .rightToLeft )
//            .environment(\.locale, Locale(identifier: "ar" ))
//.environment(\.layoutDirection, vm.isArabicLanguage ?  .rightToLeft : .leftToRight)
//.environment(\.locale, Locale(identifier:vm.isArabicLanguage ? "ar" : "en"))
        
    }
}

struct SContentView_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
    }
}
