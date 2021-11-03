//
//  HomeCheckoutSuccessfullSheetView.swift
//  Magician
//
//  Created by hosam on 20/10/2021.
//

import SwiftUI

struct HomeCheckoutSuccessfullSheetView: View {
    @ObservedObject var vm:HomeCheckoutViewModel
    @EnvironmentObject var vmm:HomeMainTabBarViewModel

    @State var isFocus=false
    @Binding var isShowMainParent:Bool
    @Binding var isShow:Bool

    var body: some View {
        VStack() {
            Spacer()
            
            VStack(spacing:8) {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {withAnimation{
                            vm.isOperationSheetDone.toggle()
                    }}, label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                            })
                    
                }
                //                .padding()
                .padding(.horizontal,24)
                
                Image("Group 8168")
                    .padding(.vertical)
                
                VStack{
                    
                    Text(LocalizedStringKey("Thank You!"))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    
                    Text(LocalizedStringKey("for your order"))
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    
                    VStack {
                        Text(LocalizedStringKey("Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order"))
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .lineLimit(3)
                            .foregroundColor(.black.opacity(0.6))
                            .multilineTextAlignment(.center)
                            .padding(.bottom,40)
                        
                        Button(action: {
                            withAnimation{
                                vm.isOperationSheetDone.toggle()
                                vm.isTrackMyOrder=true
                                //                                vm.isOperationDone.toggle()
                                
                                //                        vm.isCheckOut.toggle()
                            }
                        }, label: {
                            RoundedRectangle(cornerRadius: 28)
                                
                                .fill(ColorConstants.mainColor)
                                .overlay(
                                    
                                    Text(LocalizedStringKey("Track my order"))
                                        .font(.system(size: 16))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)//.opacity(0.6))
                                )
                            
                        })
                        .frame(height:60)
                        
                        Button(action: {withAnimation{
                            vm.isOperationSheetDone.toggle()
                            isShow=false
                            isShowMainParent=false
                            vmm.goToMainTab()

                        }}, label: {
                            Text(LocalizedStringKey("Back to home"))
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        })
                        .frame(height:60)
                        
                    }
                    .padding(.horizontal,50)
                    .padding(.top)
                    .padding(.bottom,bottomSafeArea(x: 15))

                }
                
            }
            
            .padding(.top,20)
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 18)))
            .offset(y: vm.isOperationSheetDone ? 0 : UIScreen.main.bounds.height/2)
            
        }
        .background(Color.black.opacity(0.6))
        .edgesIgnoringSafeArea(.all)
        //        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct HomeCheckoutSuccessfullSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
        
        //        HomeCheckoutSuccessfullSheetView()
    }
}
