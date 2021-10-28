//
//  SSHomeCheckout.swift
//  Magician
//
//  Created by hosam on 24/10/2021.
//

import SwiftUI

struct SSHomeCheckout: View {
    var x =         OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
    @Binding var isShow:Bool
    @Binding var isShowMainParent:Bool

    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    var xx = [
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        SS(name: "Beef Burger x1", price: "$14"),
        
    ]
    
    @StateObject var vm = HomeCheckoutViewModel()
    @EnvironmentObject var vmm:HomeMainTabBarViewModel

    var body: some View {
        ZStack {
            
            VStack {
                
                
                HomeCheckoutTopView(vm:vm,isShow: $isShow, isShowMainParent: $isShowMainParent)
                    .environmentObject(vmm)
                
                //                ZStack {
                
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        ZStack {
                            VStack {
                                HomeCheckoutItemRowView(x:x)
                                
                                
                                LazyVGrid(columns: columns,spacing:12){
                                    
                                    // assigning name as ID...
                                    
                                    ForEach(xx){index in
                                        HomeCheckoutRowView(x:index)
                                    }
                                }
                                
                                .padding(.top,40)
                                
                                VStack(alignment:.leading,spacing:16) {
                                    
                                    VStack {
                                        HStack {
                                            
                                            Text(LocalizedStringKey("Add Notes To Your Order"))
                                                .font(.system(size: 15))
                                                .fontWeight(.semibold)
                                            Spacer()
                                            
                                            Button(action: {withAnimation{
                                                vm.isShowNotesText=true
                                            }}, label: {
                                                Label(
                                                    title: { Text(LocalizedStringKey("Add Notes"))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(Color("mains"))

                                                    },
                                                    icon: { Image( "Group 8358")
                                                        .padding(.horizontal,8)
                                                    }
                                                )
//                                                .foregroundColor(Color("mains")  )              .opacity(vm.notesText=="" ? 1 : 0)
                                                
                                               
                                            })
                                            .opacity(vm.notesText=="" ? 1 : 0.2)
                                            .disabled(                vm.notesText=="" ? false : true)
                                            
                                            
                                        }
                                        ZStack {
                                            
                                            Spacer()
                                                .frame(height:0)
                                            
                                            if vm.notesText != "" {
                                                VStack {
                                                    HStack {
                                                        
                                                        Text(vm.notesText)
                                                            .lineLimit(4)
                                                        
                                                        Spacer()
                                                        
                                                        VStack {
                                                            Button(action: {withAnimation{
                                                                vm.isShowNotesText=true
                                                                
                                                                //                                                        isShowSheet.toggle()
                                                            }}, label: {
                                                                Image("Icon awesome-edit")
                                                            }
                                                            )
                                                            Spacer()
                                                        }
                                                        .padding(.top,4)
                                                        
                                                    }
                                                    .padding()
                                                }
                                                .background(Color.white)
                                                .opacity(vm.notesText=="" ? 0 : 1)
                                                
                                            }
                                        }
                                        //                                        .frame()
                                    }
                                    
                                    
                                    
                                    Divider()
                                    
                                    HStack {
                                        Text(LocalizedStringKey("Sub Total"))
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        Text("$68")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                            
                                            .foregroundColor(Color("mains"))
                                        
                                    }
                                    
                                    HStack {
                                        Text(LocalizedStringKey("Delivery Cost"))
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        Text("$2")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                            
                                            .foregroundColor(Color("mains"))
                                        
                                    }
                                    
                                    Divider()
                                    
                                    
                                    HStack {
                                        Text(LocalizedStringKey("Total"))
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        Text("$70")
                                            .font(.system(size: 25))
                                            .fontWeight(.bold)
                                            
                                            .foregroundColor(Color("mains"))
                                        
                                    }
                                }
                                .padding(.vertical,40)
                                
                                Spacer()
                                
                            }
                            //                    .padding(.horizontal,42)
                            
                            .padding(.horizontal,24)
                            .padding(.top)
                            .opacity(vm.isTrackMyOrder || vm.isCheckOut ? 0 : 1)
                            
                            if vm.isCheckOut {
                                SHomeCheckoutAddVisa(vm: vm)
                                    .transition(.move(edge: .leading))
                                    .opacity(vm.isTrackMyOrder  ? 0 : 1)
                            }
                            
                            if vm.isTrackMyOrder {
                                HomeTrackOrder(vm: vm)
                                    .transition(.move(edge: .trailing))
                                    .opacity(  vm.isTrackMyOrder ? 1 : 0)

                            }
                        }
                        
                        
                    }
                    .padding(.bottom)
                    
                    Spacer()
                    
                    ZStack {
                        
                        if vm.isTrackMyOrder {
                            Spacer()
                                .frame(height:0)
                        }else {
                        Button(action: {
                            withAnimation{
                                //                                isShow.toggle()
                                //                                vm.isTrackMyOrder.toggle()
                                //                        vm.isOperationSheetDone=true
    //                            vm.isCheckOut.toggle()
                                vm.makeAction(s: vm.isCheckOut ? "Send Order" : "Checkout")//vm.getName())
    //                            !vm.isCheckOut ? vm.isCheckOut=true : !vm.isTrackMyOrder ? vm.isTrackMyOrder=true :()
                            }
                        }, label: {
                            RoundedRectangle(cornerRadius: 28)
                                
                                .fill(Color("mains"))
                                .overlay(
                                    
                                    Text(LocalizedStringKey(vm.isCheckOut ? "Send Order" : "Checkout"))
                                        .font(.system(size: 16))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)//.opacity(0.6))
                                )
                            
                        })
                        .frame(height:60)
                        //                .padding(.horizontal)
                        .padding(.horizontal,24)
                        
                        .padding(.bottom,bottomSafeArea(x: 30,y: 0) )
                        
                       
                            
                            
                        }
                    }
                }
                
                
                
            }
            
            
            
            if vm.isShowNotesText {
                
                SelectedItemAddNotesSheetView(isShow: $vm.isShowNotesText,notesText:$vm.notesText)
                //                    .environmentObject(vmm)
                //                    .transition(.move(edge: .bottom))
                
                
            }
            
                                if vm.isAddVisaSheet {
            
                                    HomeCheckoutSheetView(vm:vm)
                                    //                    .environmentObject(vmm)
                                    //                    .transition(.move(edge: .bottom))
            
            
                                }
            
                                if vm.isOperationSheetDone {
            
                                    HomeCheckoutSuccessfullSheetView(vm:vm,isShowMainParent: $isShowMainParent,isShow:$isShow)
                                                        .environmentObject(vmm)
                                    //                    .transition(.move(edge: .bottom))
            
                                }
            
            //        .environmentObject(vmm)
            //        .environmentObject(vm)
            
        }
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
        
//        .alert(isPresented: $vm.isChangeAddress, AlertConfig(title: "Change Address", action: {
//            //                    print("Text \($0 ?? "Cancelled")")
//            vm.address=$0 ?? ""
//        }))
    }
}

struct SSHomeCheckout_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeCheckout(isShow: .constant(false), isShowMainParent: .constant(false))
    }
}
