//
//  MainHomeWelcome.swift
//  Magician
//
//  Created by hosam on 16/10/2021.
//

import SwiftUI

struct MainHomeWelcome: View {
    @AppStorage("onBoardDone") var isonBoardDone: Bool = false
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @EnvironmentObject var vm:HomeMainTabBarViewModel

    var body: some View {
        ZStack {
            
            
//            MainHomeTabBar()
            
            if isonBoardDone {

                MainHomeReg()

                    .transition(.move(edge: .bottom))
                    .environmentObject(vm)
                //                    .environmentObject(vm)

                if isUserLogin {
                    MainHomeTabBar()
                    //                        .transition(.move(edge: .bottom))

                }


            }
            else {
                SSHomeONBoard()

            }
            
        }
        .environmentObject(vm)
    }
}

struct MainHomeWelcome_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeWelcome()
    }
}
