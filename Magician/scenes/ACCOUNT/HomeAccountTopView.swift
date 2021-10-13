//
//  HomeAccountTopView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccountTopView: View {
    @ObservedObject var vm:HomeAccountViewModel
    var body: some View {
        VStack {
            HStack {
                
                Label(
                    title: { Text("Hello , Eslam")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .padding(.leading,2)
                        
                    },
                    icon: { Image("Magician LOGO")
                        .resizable()
                        .frame(width: 45, height: 50)
                    }
                )
                
                Spacer()
                
                Image("Group 8179")
                    .resizable()
                    .frame(width:150,height:40)
                    .overlay(
                        
                        Label(
                            title: { Text("Cairo, Egypt")
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .padding(.horizontal,16)
                                
                            },
                            icon: { Image("location")
                                .padding(.leading)
                                //                            .resizable()
                                //                            .frame(width: 45, height: 50)
                            }
                        )
                        
                    )
                
            }
            
            ZStack {
                if vm.image == Image("Profile picture"){
                    
                    Image("Profile picture")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 145, height: 145)
                        .clipShape(Circle())
                        .padding(.top)
                        .overlay(
                            Button(action: {
                                withAnimation{vm.shouldPresentActionScheet.toggle()}
                            }, label: {
                                
                                
                                Image("Group 6778")
                            })
                            ,alignment:.bottom)
                        
                        
                        .sheet(isPresented: $vm.shouldPresentImagePicker) {
                            SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.image, isPresented: self.$vm.shouldPresentImagePicker)
                        }
                        .actionSheet(isPresented: $vm.shouldPresentActionScheet) { () -> ActionSheet in
                            ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = true
                                
                            }), ActionSheet.Button.default(Text("Photo Library"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = false
                            }), ActionSheet.Button.cancel()])
                        }
                    
                }
                
                
                else {
                    
                    vm.image!
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 145, height: 145)
                        .clipShape(Circle())
                        .padding(.top)
                        .overlay(
                            Button(action: {
                                withAnimation{vm.shouldPresentActionScheet.toggle()}
                            }, label: {
                                
                                
                                Image("Group 6778")
                            })
                            ,alignment:.bottom)
                        
                        .sheet(isPresented: $vm.shouldPresentImagePicker) {
                            SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.image, isPresented: self.$vm.shouldPresentImagePicker)
                        }.actionSheet(isPresented: $vm.shouldPresentActionScheet) { () -> ActionSheet in
                            ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = true
                            }), ActionSheet.Button.default(Text("Photo Library"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = false
                            }), ActionSheet.Button.cancel()])
                        }
                }
                
            }
            
        }
        
        .padding(.top,getSafeArea()?.top)
        .padding(.horizontal,24)
        //        .padding(.top)
        
    }
}

struct HomeAccountTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
