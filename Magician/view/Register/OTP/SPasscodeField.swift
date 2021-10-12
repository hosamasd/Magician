//
//  SPasscodeField.swift
//  PlayIT
//
//  Created by hosam on 22/06/2021.
//  Copyright © 2021 Bola Fayez. All rights reserved.
//

import SwiftUI

struct SPasscodeField: View {
    var maxDigits: Int = 4//6
    
    @State var pin: String = ""
    
    //    @State var pin: String = ""
    @State var showPin = true
    
    
    var handler: (String, (Bool) -> Void) -> Void
    
    public var body: some View {
        VStack{
            
            ZStack {
                pinDots
                backgroundField
            }
            
            //            .background(Color.white)
            
            //            .cornerRadius(30)
        }
        //        .padding(.top,60)
        .padding(.horizontal,32)
        
    }
    
    private var pinDots: some View {
        HStack {
            Spacer()
            ForEach(0..<maxDigits) { index in
                //                RoundedRectangle(cornerRadius: 10)
                //                    .fill(Color("txField"))//.opacity(0.2))
                //                    .frame(width:50,height:50)
                //                    .overlay(
                Image(systemName: self.getImageName(at: index))
                    .font(.system(size:isSmallDevice() ? 40 : 50))
                    .foregroundColor(.gray.opacity(0.6))//.opacity(0.2))
                    .background(Color("txField"))
                //                    )
                //                Image(systemName: self.getImageName(at: index))
                //                    .font(.system(size:isSmallDevice() ? 40 : 50))
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.trailing, -24)
        }
    }
    
    private var backgroundField: some View {
        let boundPin = Binding<String>(get: { self.pin }, set: { newValue in
            self.pin = newValue
            self.submitPin()
        })
        
        return TextField("", text: boundPin, onCommit: submitPin)
            //        return TextField("5", text: .constant("5"), onCommit: submitPin)
            
            // Introspect library can used to make the textField become first resonder on appearing
            // if you decide to add the pod 'Introspect' and import it, comment #50 to #53 and uncomment #55 to #61
            
            .accentColor(.clear)
            .foregroundColor(.clear)
            .keyboardType(.numberPad)
        //.disabled(isDisabled)
        
        //             .introspectTextField { textField in
        //                 textField.tintColor = .clear
        //                 textField.textColor = .clear
        //                 textField.keyboardType = .numberPad
        //                 textField.becomeFirstResponder()
        //                 textField.isEnabled = !self.isDisabled
        //         }
    }
    
    
    
    private var showPinButton: some View {
        Button(action: {
            self.showPin.toggle()
        }, label: {
            self.showPin ?
                Image(systemName: "eye.slash.fill").foregroundColor(.primary) :
                Image(systemName: "eye.fill").foregroundColor(.primary)
        })
    }
    
    private func submitPin() {
        //guard !pin.isEmpty else {
        //showPin = false
        //return
        //}
        
        if pin.count == maxDigits {
            //isDisabled = true
            
            handler(pin) { isSuccess in
                if isSuccess {
                    print("pin matched, go to next page, no action to perfrom here")
                } else {
                    pin = ""
                    //isDisabled = false
                    print("this has to called after showing toast why is the failure")
                }
            }
        }
        
        // this code is never reached under  normal circumstances. If the user pastes a text with count higher than the
        // max digits, we remove the additional characters and make a recursive call.
        if pin.count > maxDigits {
            pin = String(pin.prefix(maxDigits))
            submitPin()
        }
    }
    
    private func getImageName(at index: Int) -> String {
        if index >= self.pin.count {
            return "square"
        }
        
        if self.showPin {
            return self.pin.digits[index].numberString + ".square.fill"
        }
        
        return "square.fill"
    }
}

struct SPasscodeField_Previews: PreviewProvider {
    static var previews: some View {
        OTPView(vm: HomeReigtserViewModel())
    }
}
