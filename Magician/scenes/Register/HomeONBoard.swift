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
        InfoModel(title: "Select the Favorites Menu", pic: "",desc:"Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click"),
        
        InfoModel(title: "Good food at a cheap price", pic: "safeFood",desc:"You can eat at expensive restaurants with\n affordable price"),
        
        
        
    ]
    @State var s1=false
    @State var s2=false
    @State var s3=false

    @State var index = 0
    
    
    var body: some View {
        VStack{
            
           
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
                Image("Group 83961")
                
                
                Image(index == 1 ? getSecond() :  self.onBoard[self.index].pic)
                    .offset(y:-150)
            })
            .offset(y:-150)
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
    }
    
    func checkSecond()  {
        DispatchQueue.main.async {
            s1=true
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            s1=false
            s2=true

        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
            s2=false
            
            s3=true
            
        }
    }
    
    func getSecond() -> String {
        
        checkSecond()
        
        return s1 ? "Find food you love s" : s2 ? "Find food you love vectoar" :    "Find food you love vector"
    }
}

struct ContentVisew_Previews: PreviewProvider {
    static var previews: some View {
        HomeONBoard()
    }
}
