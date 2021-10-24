//
//  HomeTrackOrderAnimated.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeTrackOrderAnimated: View {
    var body: some View {
        GifImage("1")
    }
}

struct HomeTrackOrderAnimated_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))

//        HomeTrackOrderAnimated()
    }
}
