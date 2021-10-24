//
//  SelectedItemScenes.swift
//  Magician
//
//  Created by hosam on 18/10/2021.
//

import SwiftUI

struct SelectedItemScenes: View {
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    @StateObject var vm = HomeFavoriteViewModel()
    @Binding var isShow:Bool
    var selectedItem =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    @State var isFirstStep=false
    @State var isMakeCheckout=false
    
    @State var secondSelectedItem =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        VStack {
            
            Image("sfa")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:getFrameSize().width,height:getFrameSize().height/3)
                .overlay(
                    
                    HStack {
                        
                        Button(action: {withAnimation{
                            isShow.toggle()
                        }}, label: {
                            //                        Image(systemName:vmm.getBackImage() )
                            //                        HStack {
                            
                            Circle()
                                .fill(Color.white)
                                .frame(width: 31, height: 31)
                                .overlay(
                                    Image(systemName: vmm.getBackImage())// "chevron.backward")
                                        .foregroundColor(Color("mains"))
                                )
                            //
                        })
                        Spacer()
                    }
                    .padding(.top,getSafeArea()?.top)
                    .padding(.horizontal,16)
                    
                    ,alignment: .top)
                .clipShape(CustomCorners(corners: [.bottomLeft,.bottomRight], width: 20))
            //                .cornerRadius(20)
            
            SelectedItemScenesTopRow()
            
            SelectedItemScenesBottomScroll(isShow: $isFirstStep, selected: $secondSelectedItem,isMakeCheckout:$isMakeCheckout)
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.all)
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isFirstStep, content: {
                                            SelectedItemAddNotes(isShow:  $isFirstStep, selectedItem:selectedItem)  })

//                                            SelectedItemAddNotes(isShow:  $isFirstStep,isMakeCheckout: $isMakeCheckout, selectedItem:selectedItem)  })
        )
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isMakeCheckout, content: {
//                            HomeCheckout(isShow: $isMakeCheckout)

                            SSHomeCheckout(isShow: $isMakeCheckout)
//                            SHomeCheckout(isShow: $isMakeCheckout)

                        } )
        )
        
    }
}

struct SelectedItemScenes_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemScenes(isShow: .constant(false))
    }
}
