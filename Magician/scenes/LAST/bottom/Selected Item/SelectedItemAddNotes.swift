//
//  SelectedItemAddNotes.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemAddNotes: View {
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    @StateObject var vm = HomeFavoriteViewModel()
    @State var isShowSheetView = false
    @State var notesText=""
    @State var isAddCheckout=false

    @Binding var isShow:Bool
//    @Binding var isMakeCheckout:Bool
    @State var isMakeCheckout=false

    var selectedItem =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    
    var body: some View {
        ZStack {
            VStack {
                
                Image(vm.selectedItem.img)
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
                    //                        .cornerRadius(20)
                    .clipShape(CustomCorners(corners: [.bottomLeft,.bottomRight], width: 20))
                
                
                
                
                
                
                
                
                SelectedItemAddNotesTopRow()
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        
                        
                        VStack {
                            
                            //                    BottomAddNotesView()
                            
                            FirstStepView()
                            
                            FirstStepView()
                            
                            BottomAddNotesView(isShow: $isShowSheetView,notesText: $notesText,isShowSheet: $isShowSheetView,isAddCheckout:$isAddCheckout)
                                .padding(.bottom)
                            //                    SecondStepView()
                            
                        }
                        .padding(.horizontal,24)
                        
                    })
                    
                    Button(action: {withAnimation{
                        isMakeCheckout.toggle()

                    }}, label: {
                        Image("Group 8333")
                            .overlay(
                                
                                Circle()
                                    .fill(Color("mains"))
                                    .frame(width: 25, height: 25)
                                    .overlay(
                                        
                                        Text("1")
                                            .foregroundColor(.white)
                                    )
                                    .offset(x:20,y:5)
                                    .opacity(isAddCheckout ? 1 : 0)
                                ,alignment: .top)
                    })
                    //                .offset(x:10)
                }
                //                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
                //            SelectedItemAddNotesAddMinusView()
                
                Spacer()
                
            }
            
            if isShowSheetView {
                
                SelectedItemAddNotesSheetView(isShow: $isShowSheetView,notesText:$notesText)
                    //                    .environmentObject(vmm)
                    .transition(.move(edge: .bottom))
                
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        
        .background(EmptyView()
                        .fullScreenCover(isPresented: $isMakeCheckout, content: {
//                            HomeCheckout(isShow: $isMakeCheckout)
                            SSHomeCheckout(isShow: $isMakeCheckout)

//                            HomeCheckout(isShow: $isMakeCheckout)
                        } )
        )
    }
}

struct SelectedItemAddNotes_Previews: PreviewProvider {
    static var previews: some View {
//        SelectedItemAddNotes(isShow: .constant(false), isMakeCheckout: .constant(false))
        SelectedItemAddNotes(isShow: .constant(false))
    }
}
