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
//    @StateObject var vmss = HomeOrdersViewModel()
//    @StateObject var vmsss = MainHomeTabViewModel()
    @StateObject var wqq = HomeAccountViewModel()

    @StateObject var vmt=HomeCheckoutViewModel()

    var body: some View {
        HomeTrackMyOrder()
//        SSHomeONBoard()
//        AccountSavedAddress()
//        SelectedItemAddNotes(isShow: .constant(false))
//        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
//        HomeCheckoutAddVisa(vm: HomeCheckoutViewModel())
//        SHomeCheckout(isShow: .constant(false))
//        SelectedItemAddNotes(isShow: .constant(false), isMakeCheckout: .constant(false))

//        SelectedItemAddNotes(isShow: .constant(false))
//        HomeFilter()
//            .environmentObject(vm)
//            .environmentObject(vms)
//        HomeTrackOrder()
//        YearPicker(isMonth: .constant(false))//start: 2000, end: 2020)
//        HomeCheckout(isShow: .constant(false))
//        HomeFilterProcess()
//        SelectedItemAddNotes()
            .environmentObject(vmt)
            .environmentObject(wqq)
//            .environmentObject(vmsss)
    }
}

struct SContentView_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
    }
}
