//
//  ContentView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = HomeMainTabBarViewModel()
    @StateObject var vms = HomeReigtserViewModel()
    @StateObject var vmss = HomeOrdersViewModel()
    @StateObject var vmsss = MainHomeTabViewModel()
    
    var body: some View {
        
        
        
        //final
        MainHomeWelcome()
            .environmentObject(vm)
            
            .environment(\.layoutDirection, vm.isArabicLanguage ?  .rightToLeft : .leftToRight)
            .environment(\.locale, Locale(identifier:vm.isArabicLanguage ? "ar" : "en"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
