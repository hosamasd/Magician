//
//  ContentView.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        OTPView(vm: HomeReigtserViewModel())

//        SignUpView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
