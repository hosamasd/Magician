//
//  MainHomeReg.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import SwiftUI

struct MainHomeReg: View {
    @StateObject var vm = HomeReigtserViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Image("Organe top shape")
                    .resizable()
                    
                    .aspectRatio(contentMode: .fill)
                    .frame(width: isSmallDevice() ?  getFrameSize().width+60 : getFrameSize().width+70, height: getHeight())
                //                    .frame(maxWidth:.infinity,maxHeight:getFrameSize().height/2-60)
                
                Image("Magician LOGO")
                    .padding(.top,isSmallDevice() ? 40 : -40)
                
                Text(LocalizedStringKey("Discover The Best Order From Over 10,000\n Restaurants, Store And Fast Delivery To Your\n Doorstep"))
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .foregroundColor(Color.black.opacity(0.6))
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .lineSpacing(6)
                    .padding(.top,20)
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        vm.isLogin.toggle()
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .fill(ColorConstants.mainColor)
                        .overlay(
                            
                            Text(LocalizedStringKey("Login"))
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)//.opacity(0.6))
                        )
                    
                })
                .frame(width:getFrameSize().width-48)
                
                //                .padding(.horizontal,32)
                .frame(height:60)
                
                Button(action: {
                    withAnimation{
                        vm.isSignUp.toggle()
                        
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 28)
                        
                        .stroke(ColorConstants.mainColor)
                        .overlay(
                            
                            Text(LocalizedStringKey("Create an Account"))
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.mainColor)//.opacity(0.6))
                        )
                    
                })
                .frame(width:getFrameSize().width-48)
                
                //                .padding(.horizontal,32)
                .frame(height:60)
                .padding(.top)
                
                Spacer()
                
            }
            .opacity(!vm.isLogin ? 1 : 0)
            .opacity(!vm.isSignUp ? 1 : 0)
            
            if vm.isLogin {
                
                LoginView()//vm:vm)
                    .environmentObject(vm)
                    .environmentObject(vmm)
                    .transition(.move(edge: .bottom))
                    .opacity(vm.isLogin ? 1 : 0)
                
            }
            
            if vm.isSignUp {
                
                SignUpView()//vm:vm)
                    .environmentObject(vm)
                    .environmentObject(vmm)
                    
                    .transition(.move(edge: .bottom))
                    .opacity(vm.isSignUp ? 1 : 0)
                
            }
            
            if vm.isLooding {
                //                LoadingCircleOpacity()
                LoadingCapsuleSpacing()
            }
            
            //if need location panel
            //            if vm.isSHowLocation {
            //                //                LoadingCircleOpacity()
            //                LocationView(dismiss: $vm.isSHowLocation, locationText: $vm.addressSign)
            //                    //                LocationView(  locationText: $vm.addressSign )
            //                    //                    .environmentObject(vm)
            //                    .transition(.move(edge: .bottom))
            //
            //            }
        }
        
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        //        .alert(isPresented: $vm.alert) {
        //
        //            Alert(title: Text(LocalizedStringKey("Error")), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        //        }
        .overlay(overlayView: Banner.init(data: Banner.BannerDataModel(title: "Eroor",titleAr: "خطأ", detail: vm.alertMsg, type: .error), show: $vm.alert)
                    .padding(.horizontal)
                 , show: $vm.alert)
    }
    
    func getHeight() -> CGFloat {
        !isSmallDevice() ? getFrameSize().height/2 - 60  : getFrameSize().height/2 - 200
        //         isSmallDevice() ?  120 : 60
    }
}

struct MainHomeReg_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeReg()
        
        MainHomeReg()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
    }
}
