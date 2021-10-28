//
//  MagicianApp.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

@main
struct MagicianApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
                        SContentView()
//            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
            
        }
    }
}
