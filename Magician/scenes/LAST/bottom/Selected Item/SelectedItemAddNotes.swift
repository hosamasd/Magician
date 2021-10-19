//
//  SelectedItemAddNotes.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct SelectedItemAddNotes: View {
    @StateObject var vm = HomeFavoriteViewModel()
    @State var isShowSheetView = false
    @State var notesText=""
    var body: some View {
        ZStack {
            VStack {
                
                Image(vm.selectedItem.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:getFrameSize().width,height:getFrameSize().height/3)
                    .overlay(
                        
                        Button(action: {withAnimation{
                            
                        }}, label: {
                            //                        Image(systemName:vmm.getBackImage() )
                            HStack {
                                
                                Image(systemName: "chevron.backward")
                                    .foregroundColor(Color("mains"))
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                                
                                Spacer()
                            }
                            .padding(.top,getSafeArea()?.top)
                            .padding(.horizontal,16)
                        })
                        ,alignment: .top)
                    .cornerRadius(10)
                
                SelectedItemAddNotesTopRow()
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        
                        
                        VStack {
                            
                            //                    BottomAddNotesView()
                            
                            FirstStepView()
                            
                            FirstStepView()
                            
                            BottomAddNotesView(isShow: $isShowSheetView)
                                .padding(.bottom)
                            //                    SecondStepView()
                            
                        }
                        .padding(.horizontal,24)
                        
                    })
                    Button(action: {withAnimation{
                        
                    }}, label: {
                        Image("Group 8333")
                    })
                    //                .offset(x:10)
                }
                .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
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
        
    }
}

struct SelectedItemAddNotes_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemAddNotes()
    }
}
