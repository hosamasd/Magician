//
//  KeyboardSpace.swift
//  Bazaarzone
//
//  Created by hosam on 18/09/2021.
//

import SwiftUI
import Combine

let keyboardSpaceD = KeyboardSpace()
extension View {
    func keyboardSpace() -> some View {
        modifier(KeyboardSpace.Space(data: keyboardSpaceD))
    }
}

class KeyboardSpace: ObservableObject {
    var sub: AnyCancellable?
    
    @Published var currentHeight: CGFloat = 0
    var heightIn: CGFloat = 0 {
        didSet {
            withAnimation {
                if UIWindow.keyWindow != nil {
                    //fix notification when switching from another app with keyboard
                    self.currentHeight = heightIn
                }
            }
        }
    }
    
    init() {
        subscribeToKeyboardEvents()
    }
    
    private let keyboardWillOpen = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map { $0.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect }
        .map { $0.height - (UIWindow.keyWindow?.safeAreaInsets.bottom ?? 0) }
    
    private let keyboardWillHide =  NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map { _ in CGFloat.zero }
    
    private func subscribeToKeyboardEvents() {
        sub?.cancel()
        sub = Publishers.Merge(keyboardWillOpen, keyboardWillHide)
            .subscribe(on: RunLoop.main)
            .assign(to: \.self.heightIn, on: self)
    }
    
    deinit {
        sub?.cancel()
    }
    
    struct Space: ViewModifier {
        @ObservedObject var data: KeyboardSpace
        
        func body(content: Content) -> some View {
            VStack(spacing: 0) {
                content
                
                Rectangle()
                    .foregroundColor(Color(.clear))
                    .frame(height: data.currentHeight)
                    .frame(maxWidth: .greatestFiniteMagnitude)
                
            }
        }
    }
}

extension UIWindow {
    static var keyWindow: UIWindow? {
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        return keyWindow
    }
}
