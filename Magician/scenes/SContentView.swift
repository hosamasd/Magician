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
    
    var body: some View {
        HomeFilter()
            .environmentObject(vm)
            .environmentObject(vms)
//        HomeTrackOrder()
//        YearPicker(isMonth: .constant(false))//start: 2000, end: 2020)
//        HomeCheckout(isShow: .constant(false))
//        HomeFilterProcess()
//        SelectedItemAddNotes()
//            .environmentObject(vm)
//            .environmentObject(vmsss)
    }
}

struct SContentView_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
    }
}
