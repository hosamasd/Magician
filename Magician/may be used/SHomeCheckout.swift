////
////  SHomeCheckout.swift
////  Magician
////
////  Created by hosam on 21/10/2021.
////
//
//import SwiftUI
//
//struct SHomeCheckout: View {
//    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
//    @Binding var isShow:Bool
//    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
//    var xx = [
//        SS(name: "Beef Burger x1", price: "$14"),
//        SS(name: "Beef Burger x1", price: "$14"),
//        SS(name: "Beef Burger x1", price: "$14"),
//        SS(name: "Beef Burger x1", price: "$14"),
//        
//    ]
//    
//    @StateObject var vm = HomeCheckoutViewModel()
//    
//    var body: some View {
//        ZStack {
//            
//            VStack {
//                
//                
//                HomeCheckoutTopView(vm:vm,isShow: $isShow)
//                
//                //                ZStack {
//                
//                VStack {
//                    ScrollView(.vertical, showsIndicators: false) {
//                        
//                        VStack {
//                            HomeCheckoutItemRowView(x:x)
//                            
//                            
//                            LazyVGrid(columns: columns,spacing:12){
//                                
//                                // assigning name as ID...
//                                
//                                ForEach(xx){index in
//                                    HomeCheckoutRowView(x:index)
//                                }
//                            }
//                            
//                            .padding(.top,40)
//                            
//                            VStack(alignment:.leading,spacing:16) {
//                                
//                                VStack {
//                                    HStack {
//                                        
//                                        Text("Add Notes To Your Order")
//                                            .font(.system(size: 15))
//                                            .fontWeight(.semibold)
//                                        Spacer()
//                                        
//                                        Button(action: {withAnimation{
//                                            vm.isShowNotesText=true
//                                        }}, label: {
//                                            Label(
//                                                title: { Text("Add Notes")
//                                                    .fontWeight(.semibold)
//                                                    
//                                                },
//                                                icon: { Image( "Group 8358")
//                                                    .padding(.horizontal,8)
//                                                }
//                                            )
//                                            .foregroundColor(ColorConstants.mainColor  )              .opacity(vm.notesText=="" ? 1 : 0)
//                                            
//                                            .disabled(                vm.notesText=="" ? false : true)
//                                        })
//                                        
//                                        
//                                    }
//                                    ZStack {
//                                        
//                                        Spacer()
//                                            .frame(height:0)
//                                        
//                                        if vm.notesText != "" {
//                                            VStack {
//                                                HStack {
//                                                    
//                                                    Text(vm.notesText)
//                                                        .lineLimit(3)
//                                                    
//                                                    Spacer()
//                                                    
//                                                    VStack {
//                                                        Button(action: {withAnimation{
//                                                            vm.isShowNotesText=true
//                                                            
//                                                            //                                                        isShowSheet.toggle()
//                                                        }}, label: {
//                                                            Image("Icon awesome-edit")
//                                                        }
//                                                        )
//                                                        Spacer()
//                                                    }
//                                                    .padding(.top,4)
//                                                    
//                                                }
//                                                .padding()
//                                            }
//                                            .background(Color.white)
//                                            .opacity(vm.notesText=="" ? 0 : 1)
//                                            
//                                        }
//                                    }
//                                    //                                        .frame()
//                                }
//                                
//                                
//                                
//                                Divider()
//                                
//                                HStack {
//                                    Text("Sub Total")
//                                        .font(.system(size: 15))
//                                        .fontWeight(.semibold)
//                                    
//                                    Spacer()
//                                    
//                                    Text("$68")
//                                        .font(.system(size: 14))
//                                        .fontWeight(.bold)
//                                        
//                                        .foregroundColor(ColorConstants.mainColor)
//                                    
//                                }
//                                
//                                HStack {
//                                    Text("Delivery Cost")
//                                        .font(.system(size: 15))
//                                        .fontWeight(.semibold)
//                                    
//                                    Spacer()
//                                    
//                                    Text("$2")
//                                        .font(.system(size: 14))
//                                        .fontWeight(.bold)
//                                        
//                                        .foregroundColor(ColorConstants.mainColor)
//                                    
//                                }
//                                
//                                Divider()
//                                
//                                
//                                HStack {
//                                    Text("Total")
//                                        .font(.system(size: 15))
//                                        .fontWeight(.semibold)
//                                    
//                                    Spacer()
//                                    
//                                    Text("$70")
//                                        .font(.system(size: 25))
//                                        .fontWeight(.bold)
//                                        
//                                        .foregroundColor(ColorConstants.mainColor)
//                                    
//                                }
//                            }
//                            .padding(.vertical,40)
//                            
//                            Spacer()
//                            
//                        }
//                        //                    .padding(.horizontal,42)
//                        
//                        .padding(.horizontal,24)
//                        .padding(.top)
//                        
//                        
//                    }
//                    .padding(.bottom)
//                    
//                    Spacer()
//                    
//                    Button(action: {
//                        withAnimation{
//                            //                                isShow.toggle()
//                            //                                vm.isTrackMyOrder.toggle()
//                            //                        vm.isOperationSheetDone=true
//                            vm.isCheckOut.toggle()
//                        }
//                    }, label: {
//                        RoundedRectangle(cornerRadius: 28)
//                            
//                            .fill(ColorConstants.mainColor)
//                            .overlay(
//                                
//                                Text(LocalizedStringKey("Checkout"))
//                                    .font(.customFontSystem(size: 16))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color.white)//.opacity(0.6))
//                            )
//                        
//                    })
//                    .frame(height:60)
//                    //                .padding(.horizontal)
//                    .padding(.horizontal,24)
//                    
//                    .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
//                }
//                
//                
//                
//            }
//            
//            
//            
//            if vm.isShowNotesText {
//                
//                SelectedItemAddNotesSheetView(isShow: $vm.isShowNotesText,notesText:$vm.notesText)
//                //                    .environmentObject(vmm)
//                //                    .transition(.move(edge: .bottom))
//                
//                
//            }
//            
//            //                    if vm.isAddVisaSheet {
//            //
//            //                        HomeCheckoutSheetView(vm:vm)
//            //                        //                    .environmentObject(vmm)
//            //                        //                    .transition(.move(edge: .bottom))
//            //
//            //
//            //                    }
//            //
//            //                    if vm.isOperationSheetDone {
//            //
//            //                        HomeCheckoutSuccessfullSheetView(vm:vm)
//            //                        //                    .environmentObject(vmm)
//            //                        //                    .transition(.move(edge: .bottom))
//            //
//            //                    }
//            
//            //        .environmentObject(vmm)
//            //        .environmentObject(vm)
//            
//        }
//        .background(ColorConstants.bg)
//        .edgesIgnoringSafeArea(.all)
//        //        .background(ColorConstants.bg)
//        //        .edgesIgnoringSafeArea(.all)
//        //        .navigationBarTitle("")
//        //        .navigationBarHidden(true)
//        //        .navigationBarBackButtonHidden(true)
//        //
//                .alert(isPresented: $vm.isChangeAddress, AlertConfig(title: "Change Address", action: {
//                    //                    print("Text \($0 ?? "Cancelled")")
//                    vm.address=$0 ?? ""
//                }))
//        
//        .background(EmptyView()
//                        .fullScreenCover(isPresented: $vm.isCheckOut, content: {
//                            HomeCheckoutAddVisa(vm: vm)
//                        })
//        )
//        .background(EmptyView()
//                        .fullScreenCover(isPresented: $vm.isTrackMyOrder, content: {
//                            HomeTrackOrder(vm: vm)
//                        })
//        )
//        
//    }
//}
//
//
//struct SHomeCheckout_Previews: PreviewProvider {
//    static var previews: some View {
//        SHomeCheckout(isShow: .constant(false))
//    }
//}
