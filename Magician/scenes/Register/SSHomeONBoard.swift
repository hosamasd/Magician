//
//  SSHomeONBoard.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct SSHomeONBoard: View {
    @State  var onBoard = [
        InfoModel(title:"Fast Delivery",  pic: "Layer 5",desc:"Fast Order Delivery To Your Home, Office Wherever \n You Are"),
        
        InfoModel(title: "Select the Favorites Menu", pic: "1",desc:"Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click"),
        
        InfoModel(title: "Good food at a cheap price", pic: "2",desc:"You can eat at expensive restaurants with\n affordable price"),
        
        
    ]
    @State var s0=false
    
    @State var s1=false
    @State var s2=false
    @State var s3=false
    
    @State var t0=false
    
    @State var t1=false
    @State var t2=false
    @State var index = 0
    @AppStorage("onBoardDone") var isonBoardDone: Bool = false
    
    
    var body: some View {
        VStack{
            
            
            
            //                    .offset(y: t0 || s0 ? -800 : 0)
            
            ZStack {
                
                
                if index == 0 {
                    Image("Group 8446")
//                        .resizable()
//                        .frame(height:getFrameSize().height/2)
                        .offset(y:isSmallDevice() ? 80 : 100)
                    
//                    Image("Group 8396-2")//Group 8802 Group 8396-2
//                        .offset(y:isSmallDevice() ? -100 : -80)//-60
//                    Image("Group 8802-1")//Group 8802 Group 8396-2

//
                    //                    ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                    //
                    //                        Image("Group 8396-1")
                    ////                            .resizable()
                    ////                            .aspectRatio(contentMode: .fill)
                    ////                            .frame(maxWidth:getFrameSize().width+200,maxHeight:getFrameSize().height/2+120)
                    //
                    ////                            .opacity(index == 0 ? 1 : 0)
                    //
                    //                    Image(  self.onBoard[self.index].pic)
                    //                        .resizable()
                    //                        .aspectRatio(contentMode: .fit)
                    //                        .offset(y:-60)
                    //                        .frame(width:getFrameSize().width-48)
                    //
                    //
                    //                    })
                    //                    .frame(height:getFrameSize().height/2)
                    //                                            .frame(width:getFrameSize().width-48)
                    
                    //                    .background(Color.green)
                    
                    //                    .frame(maxHeight:getFrameSize().height/2+80)
                    //                    .background(Color.red)
                    
                    
                }
                else if index == 1 {
                    GifImage("1")
                    //                    .padding(.top,-60)
                    //                    .offset(y:-30)
                    //
                    //                    .frame(maxHeight:getFrameSize().height/2+130)
                }else {
                    GifImage("2")
                    //                        .padding(.top,-60)
                    
                    
                    //                        .frame(maxHeight:getFrameSize().height/2+130)
                }
            }
            .padding(.top,-60)
            .frame(height:getHeights())//getFrameSize().height/2+120)
            
            
            //            })
            
            //            VStack {
            
            HStack(spacing: 12){
                
                ForEach(0..<self.onBoard.count,id: \.self){i in
                    
                    
                    Circle()
                        .fill(self.index == i ? Color("mains") : Color.gray.opacity(0.5))
                        .frame(width: 10, height: 10)
                    
                }
            }
            .padding(.top, isSmallDevice() ?  0 : 0)// : -120)

//            .padding(.top, isSmallDevice() ?  100 : 0)// : -120)
            //            .padding(.top,30)
            
            VStack {
                Text(LocalizedStringKey(self.onBoard[self.index].title))
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)//.opacity(0.6))
                    .padding(.vertical,isSmallDevice() ? 16 : 32)
                    .multilineTextAlignment(.center)
                
                
                Text(LocalizedStringKey(self.onBoard[self.index].desc))
                    .font(.system(size: isSmallDevice() ? 13 : 13))
                    .fontWeight(.regular)
                    .foregroundColor(Color.black.opacity(0.6))
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
            }
            .frame(width:getFrameSize().width-64)
            //                .padding(.vertical,16)
            //            .padding(.top,index == 0 ? 0 : 120)
            //            .padding(.horizontal, 62)
            
            //                Spacer()
            Spacer(minLength: 0)
            
            Button(action: {
                withAnimation{
                    if index < onBoard.count-1 {
                        self.index = index+1
                        index==1 ? checkSecond() : index == 2 ? checkThird() : ()
                    }
                    else {
                        goToMainApp()
                        //                        show.toggle()
                    }                }
            }, label: {
                RoundedRectangle(cornerRadius: 28)
                    
                    .fill(Color("mains"))
                    .overlay(
                        
                        Text(LocalizedStringKey("Next"))
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)//.opacity(0.6))
                    )
                
            })
            .frame(width:getFrameSize().width-48)
            
            //            .padding(.horizontal,32)
            .frame(height:60)
            
            Spacer()
            
            //            }
            //            .offset(y:index == 0 ? -getFrameSize().height/2+60 : -getFrameSize().height/2)
            
        }
        .edgesIgnoringSafeArea(.all)
        .edgesIgnoringSafeArea(.top)
    }
    
    func getHeights() ->CGFloat {
        isSmallDevice() ? getFrameSize().height/1.5 : getFrameSize().height/2+120
    }
    
    func goToMainApp()  {
        withAnimation{isonBoardDone=true}
    }
    
    func checkSecond()  {
        DispatchQueue.main.async {
            s0=true
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            withAnimation(.easeInOut){
                s0=false
                s1=true
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            withAnimation(.easeInOut){
                
                s1=false
                
                s2=true
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            withAnimation(.easeInOut){
                
                s2=false
                
                s3=true
            }
        }
    }
    
    func checkThird()  {
        DispatchQueue.main.async {
            t0=true
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            withAnimation(.easeInOut){
                t0=false
                t1=true
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+1.2) {
            withAnimation(.easeInOut){
                t1=false
                t2=true
            }
        }
        
    }
    func getHeight() -> CGFloat {
        getFrameSize().height/2
        
        //        !isSmallDevice() ? getFrameSize().height/2 - 60  : getFrameSize().height/2 - 200
        //         isSmallDevice() ?  120 : 60
    }
    
    func getSecond() -> String {
        
        checkSecond()
        
        return s1 ? "Find food you love s" : s2 ? "Find food you love vectoar" :    "Find food you love vector"
    }
}

struct SSHomeONBoard_Previews: PreviewProvider {
    static var previews: some View {
        SSHomeONBoard()
    }
}
