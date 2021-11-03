//
//  HomeAccountPointsView.swift
//  Magician
//
//  Created by hosam on 13/10/2021.
//

import SwiftUI

struct HomeAccountPointsView: View {
    @ObservedObject var vm:HomeAccountViewModel
    @State var sliderHeight: CGFloat = 30

    var body: some View {
        VStack {
            
       
            
            HStack{

                Label(
                    title: {

                        VStack(alignment:.leading) {

                            Text("Eslam Hisham")

                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.mainColor)

                            Text("( Superman )")
                                .font(.system(size: 13))
                                .fontWeight(.semibold)
                        }

                    },
                    icon: {  Image("Profile picture")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .offset(y:8)
//                        .padding(.trailing)
                    }
    )

                Spacer()

                VStack() {
                    
                Text("1500 /")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.mainColor)
                
                 Text(   "3000 EXP")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            
            ZStack(alignment:.leading, content: {
                
                
                
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.gray.opacity(0.4))
                    
                RoundedRectangle(cornerRadius: 6)
                    .fill(ColorConstants.mainColor)
                    .frame(width: getFrameSize().width/2)
            })
            .frame( height: 6)
            .padding(.horizontal)
            .padding(.top,0)

//            .padding(.horizontal,8)
        }
        .frame(width:getFrameSize().width-64)
        .padding(.vertical,8)
        .background(Color.white)

//        .padding(.horizontal,32)
        .cornerRadius(19)
//        .frame(width:getFrameSize().width-32)

    }
    
}

struct HomeAccountPointsView_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        HomeAccountPointsView(vm: HomeAccountViewModel())
//        ContentView()
    }
}
