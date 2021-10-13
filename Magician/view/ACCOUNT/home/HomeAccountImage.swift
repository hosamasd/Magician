//
//  HomeAccountImage.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccountImage: View {
    @ObservedObject var vm:HomeAccountViewModel

    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .fill(Color("bg"))
            .frame(height:170)
            .overlay(
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
                .offset(y:-8)
                ,alignment: .center )
    }
}

struct HomeAccountImage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
