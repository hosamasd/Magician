//
//  Popover.swift
//  SwipeActionScrollView (iOS)
//
//  Created by Balaji on 13/10/21.
//

import SwiftUI

// Creating Extension for popover...
struct Toast: View {
    struct ToastDataModel {
        var title:String
        var image:String
        
    }
    let dataModel: ToastDataModel
    @Binding var show: Bool
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: dataModel.image)
                Text(dataModel.title)
            }
            .font(.headline)
            .foregroundColor(.primary)
            .padding([.top,.bottom],20)
            .padding([.leading,.trailing],40)
            .background(Color(UIColor.secondarySystemBackground))
            .clipShape(Capsule())
        }
        .frame(width: UIScreen.main.bounds.width / 1.25)
        .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
        .onTapGesture {
            withAnimation {
                self.show = false
            }
        }.onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.show = false
                }
            }
        })
    }
}

struct OverlayDemo: View {
    @State private var showOverlay = false
    @State private var showToastOverlay = false
    var body: some View {
        VStack {
            Text("Show Banner!")
                .onTapGesture {
                    withAnimation {
                        showOverlay = true
                    }
                }
            
            Text("Show Toast!")
                .onTapGesture {
                    withAnimation {
                        showToastOverlay = true
                    }
                }
        }.overlay(overlayView: Banner.init(data: Banner.BannerDataModel(title: "Title", detail: "your message", type: .success), show: $showOverlay)
                  , show: $showOverlay)
        .overlay(overlayView: Toast.init(dataModel: Toast.ToastDataModel.init(title: "toast message", image: "checkmark"), show: $showToastOverlay)
                 , show: $showToastOverlay)
        
    }
}

struct Overlay<T: View>: ViewModifier {
    
    @Binding var show: Bool
    let overlayView: T
    
    func body(content: Content) -> some View {
        ZStack {
            content
            if show {
                overlayView
            }
        }
    }
}

extension View {
    func overlay<T: View>( overlayView: T, show: Binding<Bool>) -> some View {
        self.modifier(Overlay.init(show: show, overlayView: overlayView))
    }
}

struct OverlayDemo_Previews: PreviewProvider {
    static var previews: some View {
        OverlayDemo()
    }
}
