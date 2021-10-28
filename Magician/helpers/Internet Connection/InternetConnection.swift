//
//  InternetConnection.swift
//  Workforce Pro
//
//  Created by Mahmoud Abdul-wahab on 1/13/21.
//

import Foundation

enum InternetConnection{
    static func checkInternetConnection(iCheckConnection: ICheckConnection){
        if Reachability.isConnectedToNetwork(){
            print("Internet Connection Available!")
            iCheckConnection.onSucessfullyConnected()
        }else{
            print("Internet Connection not Available!")
            iCheckConnection.onFailConnected()
        }
    }
}
