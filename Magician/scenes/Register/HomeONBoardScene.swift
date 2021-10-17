////
////  HomeONBoardScene.swift
////  Magician
////
////  Created by hosam on 17/10/2021.
////
//
//import SwiftUI
//struct HomeONBoardScene: View {
//    
//    @State  var onBoard = [
//        InfoModel(title:"Fast Delivery",  pic: "Layer 5",desc:"Fast Order Delivery To Your Home, Office Wherever \n You Are"),
//        
//        InfoModel(title: "Select the Favorites Menu", pic: "1",desc:"Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click"),
//        
//        InfoModel(title: "Good food at a cheap price", pic: "2",desc:"You can eat at expensive restaurants with\n affordable price"),
//        
//        
//    ]
//    @State var s0=false
//    
//    @State var s1=false
//    @State var s2=false
//    @State var s3=false
//    
//    @State var t0=false
//    
//    @State var t1=false
//    @State var t2=false
//    @State var index = 0
//    @AppStorage("onBoardDone") var isonBoardDone: Bool = false
//    
//    
//    var body: some View {
//            VStack{
//                
//                
//                
//                //                    .offset(y: t0 || s0 ? -800 : 0)
//                
////                ScrollView(isSmallDevice() ?  .vertical : .init(), showsIndicators: false) {
//
//                ZStack {
//                    
//                    
//                    if index == 0 {
//                        Image("Group 8396-2")
//                            .offset(y:-60)
//                        
//                        
//                    }
//                    else if index == 1 {
//                        GifImage("1")
//                    }else {
//                        GifImage("2")
//                    }
//                }
//                .offset(y:isSmallDevice() ? -100 : 0)
////                .padding(.top,-60)
//                .frame(height:getHeights())//getFrameSize().height/2+120)
//                
//                
//                //            })
//                
//                            VStack {
//                
//                HStack(spacing: 12){
//                    
//                    ForEach(0..<self.onBoard.count,id: \.self){i in
//                        
//                        
//                        Circle()
//                            .fill(self.index == i ? Color("mains") : Color.gray.opacity(0.5))
//                            .frame(width: 10, height: 10)
//                        
//                    }
//                }
////                .padding(.top, isSmallDevice() ?  100 : 0)// : -120)
//                //            .padding(.top,30)
//                
////                ScrollView(isSmallDevice() ?  .vertical : .init(), showsIndicators: false) {
//
//                VStack {
//                    Text(LocalizedStringKey(self.onBoard[self.index].title))
//                        .font(.customFontSystem(size: 24))
//                        .fontWeight(.semibold)
//                        .foregroundColor(Color.black)//.opacity(0.6))
//                        .padding(.vertical,isSmallDevice() ? 16 : 32)
//                        .multilineTextAlignment(.center)
//                    
//                    
//                    Text(LocalizedStringKey(self.onBoard[self.index].desc))
//                        .font(.customFontSystem(size: isSmallDevice() ? 13 : 13))
//                        .fontWeight(.regular)
//                        .foregroundColor(Color.black.opacity(0.6))
//                        .padding(.top)
//                        .multilineTextAlignment(.center)
//                    
//                }
//                .frame(width:getFrameSize().width-64)
//                //                .padding(.vertical,16)
//                //            .padding(.top,index == 0 ? 0 : 120)
//                //            .padding(.horizontal, 62)
//                
//                //                Spacer()
//                Spacer(minLength: 0)
//                
//                }
//                            .offset(y:-60)
//
////                .frame(width:getFrameSize().width-48)
//
//                
//                Button(action: {
//                    withAnimation{
//                        if index < onBoard.count-1 {
//                            self.index = index+1
//                            index==1 ? checkSecond() : index == 2 ? checkThird() : ()
//                        }
//                        else {
//                            goToMainApp()
//                            //                        show.toggle()
//                        }                }
//                }, label: {
//                    RoundedRectangle(cornerRadius: 28)
//                        
//                        .fill(Color("mains"))
//                        .overlay(
//                            
//                            Text("Next")
//                                .font(.customFontSystem(size: 16))
//                                .fontWeight(.semibold)
//                                .foregroundColor(Color.white)//.opacity(0.6))
//                        )
//                    
//                })
//                .frame(width:getFrameSize().width-48)
//                
//                //            .padding(.horizontal,32)
//                .frame(height:60)
//                .padding(.bottom,20)
//                
//               
//                Spacer()
//                
//                //            }
//                //            .offset(y:index == 0 ? -getFrameSize().height/2+60 : -getFrameSize().height/2)
//                
//            }
//            .edgesIgnoringSafeArea(.all)
//            .edgesIgnoringSafeArea(.top)
////        }
////        .edgesIgnoringSafeArea(.all)
////        .edgesIgnoringSafeArea(.top)
//    }
//    
//    func getHeights() ->CGFloat {
//        getFrameSize().height/2+120
////        isSmallDevice() ? getFrameSize().height/2 : getFrameSize().height/2+120
//    }
//    
//    func checkThis() -> Bool {
//        !isSmallDevice() && index == 0 ? true : false
//    }
//    
//    func goToMainApp()  {
//        withAnimation{isonBoardDone=true}
//    }
//    
//    func checkSecond()  {
//        DispatchQueue.main.async {
//            s0=true
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
//            withAnimation(.easeInOut){
//                s0=false
//                s1=true
//            }
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
//            withAnimation(.easeInOut){
//                
//                s1=false
//                
//                s2=true
//            }
//        }
//        
//        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
//            withAnimation(.easeInOut){
//                
//                s2=false
//                
//                s3=true
//            }
//        }
//    }
//    
//    func checkThird()  {
//        DispatchQueue.main.async {
//            t0=true
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
//            withAnimation(.easeInOut){
//                t0=false
//                t1=true
//            }
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+1.2) {
//            withAnimation(.easeInOut){
//                t1=false
//                t2=true
//            }
//        }
//        
//    }
//    func getHeight() -> CGFloat {
//        getFrameSize().height/2
//        
//        //        !isSmallDevice() ? getFrameSize().height/2 - 60  : getFrameSize().height/2 - 200
//        //         isSmallDevice() ?  120 : 60
//    }
//    
//    func getSecond() -> String {
//        
//        checkSecond()
//        
//        return s1 ? "Find food you love s" : s2 ? "Find food you love vectoar" :    "Find food you love vector"
//    }
//}
//
//struct HomeONBoardScene_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeONBoardScene()
//    }
//}
