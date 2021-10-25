//
//  HomeONBoard.swift
//  Magician
//
//  Created by hosam on 11/10/2021.
//

import Foundation
import SwiftUI

struct HomeONBoard: View {
    @State  var onBoard = [
        InfoModel(title:"Fast Delivery",  pic: "Layer 5",desc:"Fast Order Delivery To Your Home, Office Wherever \n You Are"),
        //        InfoModel(title: "Select the Favorites Menu", pic: "Find food you love vector",desc:"Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click"),
        //
        //        InfoModel(title: "Good food at a cheap price", pic: "Group 82q63",desc:"You can eat at expensive restaurants with\n affordable price"),
        
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
    
    
    var body: some View {
        VStack{
            
            
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                //                Image("Group 8396-1")
                //                    .offset(y: t0 || s0 ? -800 : 0)
                //                    .resizable()
                //                    .aspectRatio(contentMode: .fill)
                //                    .frame(width: isSmallDevice() ?  getFrameSize().width+60 : getFrameSize().width+70, height: getHeight())
                //                    .background(Color.gray)
                
                
                
                //                ZStack {
                //
                //                    if index == 1 {
                //
                //                        Image( "Find food you love vector-1")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            .opacity(!s0 ? 0 : 1)
                //
                //                        Image( "Find food you love vectoar")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            .offset(y:!s1 ? -800 : 0 )
                //                            //                            .opacity(!s1 ? 0 : 1)
                //                            .transition(.move(edge: .top))
                //
                //                        Image("Find food you love s")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            .offset(x:!s2 ? -350 : 0 )
                //                            .transition(.move(edge: .leading))
                //
                //                        //                            .opacity(!s2 ? 0 : 1)
                //
                //                        Image("Find food you love vector")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            .offset(x:!s3 ? 350 : 0 )
                //
                //                            //                            .opacity(!s3 ? 0 : 1)
                //                            .transition(.move(edge: .trailing))
                //
                //                    }
                //                    else if index == 2 {
                //
                //                        Image("Group 8263-2")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            //                            .opacity(!t1 ? 0 : 1)
                //                            .offset(y:!t0 ? -800 : 0 )
                //
                //                            .transition(.move(edge: .leading))
                //
                //                        Image("Group 8a263")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            //                            .opacity(!t1 ? 0 : 1)
                //                            //                            .offset(x:!t1 || !t2 ? 350 : 0 )
                //                            .offset(x: t0 ? 350 : 0 )
                //                            .transition(.move(edge: .trailing))
                //
                //                        //                            Image("Group 82q63")
                //                        //                            .resizable()
                //                        //                            .aspectRatio(contentMode: .fit)
                //                        //                                .transition(.move(edge: .bottom))
                //                        //                                .offset(y:!t2 ? 800 : 0 )
                //
                //                        Image("prize")
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //                            .transition(.move(edge: .bottom))
                //                            .offset(y:!t2 ? 800 : 0 )
                //                            .transition(.move(edge: .bottom))
                //
                //
                //                        //                            .opacity(!t2 ? 0 : 1)
                //                    }
                //                    else {
                //
                //                        Image(  self.onBoard[self.index].pic)
                //                            .resizable()
                //                            .aspectRatio(contentMode: .fit)
                //
                //                    }
                //                }
                
                GifImage("1")
                    .offset(y:-60)
                //                    .frame(width: getFrameSize().width, height: getFrameSize().height/2)
                //                Image(uiImage: UIImage.gifImageWithName("1")!)
                
                //                Image(  self.onBoard[self.index].pic)
                //                    .resizable()
                //                    .aspectRatio(contentMode: .fit)
                //                .frame(height:200)
                
                //                    .offset(y:-250)
                //                    .offset(y:-150)
            })
            //            .padding(.top,-60)
            
            //            .offset(y:-150)
            .edgesIgnoringSafeArea(.top)
            
            .frame(maxHeight:getFrameSize().height/2+60)
            
            HStack(spacing: 12){
                
                ForEach(0..<self.onBoard.count,id: \.self){i in
                    
                    
                    Circle()
                        .fill(self.index == i ? Color("mains") : Color.gray.opacity(0.5))
                        .frame(width: 10, height: 10)
                    
                }
            }
            .padding(.top,-40)
            //            .padding(.top,30)
            
            VStack {
                Text(LocalizedStringKey(self.onBoard[self.index].title))
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)//.opacity(0.6))
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
                
                Text(LocalizedStringKey(self.onBoard[self.index].desc))
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(Color.black.opacity(0.6))
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
            }
            //            .padding(.horizontal, 62)
            
            Spacer(minLength: 0)
            
            Button(action: {
                withAnimation{
                    if index < onBoard.count-1 {
                        self.index = index+1
                        index==1 ? checkSecond() : index == 2 ? checkThird() : ()
                    }
                    else {
                        //                        show.toggle()
                    }                }
            }, label: {
                RoundedRectangle(cornerRadius: 28)
                    
                    .fill(Color("mains"))
                    .overlay(
                        
                        Text("Next")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)//.opacity(0.6))
                    )
                
            })
            .padding(.horizontal,32)
            .frame(height:60)
            
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
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

struct ContentVisew_Previews: PreviewProvider {
    static var previews: some View {
        HomeONBoard()
        
        HomeONBoard()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
    }
}
