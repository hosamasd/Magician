//
//  SHomeAccountPointsView.swift
//  Magician
//
//  Created by hosam on 28/10/2021.
//

import SwiftUI

struct SHomeAccountPointsView: View {
    @ObservedObject var vm:HomeAccountViewModel
    @State var sliderHeight: CGFloat = 30
    
    var body: some View {
        VStack {
            
            HStack {
                
                Image("Profile picture")
                  .resizable()
                  .frame(width: 35, height: 35)
                    .clipShape(Circle())
//                  .offset(y:8)
//                  .padding(.trailing)
                        
                        VStack() {
                            
                            HStack {
                                
                            Text("Eslam Hisham")

                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.mainColor)
                            
                                Spacer()
                                
                                Text("1500 /")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.mainColor)
                                
                            }
                            
                            HStack {
                                
                            Text("( Superman )")
                                .font(.system(size: 13))
                                .fontWeight(.semibold)
                                
                                Spacer()
                             
                                Text(   "3000 EXP")
                                   .font(.system(size: 18))
                                   .fontWeight(.semibold)
                            }
                        }
                        
                     
                    
                
            }
            .padding(.horizontal,16)
                
//                Spacer()
//
//                Text("1500 /\n")
//                    .font(.system(size: 18))
//                    .fontWeight(.semibold)
//                    .foregroundColor(ColorConstants.mainColor)
//                +
//                 Text(   "3000 EXP")
//                    .font(.system(size: 18))
//                    .fontWeight(.semibold)
//            }
            
//            HStack{
//
//                Label(
//                    title: {
//
//                        VStack(alignment:.leading) {
//
//                            Text("Eslam Hisham")
//
//                                .font(.system(size: 18))
//                                .fontWeight(.semibold)
//                                .foregroundColor(ColorConstants.mainColor)
//
//                            Text("( Superman )")
//                                .font(.system(size: 13))
//                                .fontWeight(.semibold)
//                        }
//
//                    },
//                    icon: {  Image("Profile picture")
//                        .resizable()
//                        .frame(width: 28, height: 28)
//                        .offset(y:8)
//                        .padding(.trailing)
//                    }
//    )
//
//                Spacer()
//
//                Text("1500 /\n")
//                    .font(.system(size: 18))
//                    .fontWeight(.semibold)
//                    .foregroundColor(ColorConstants.mainColor)
//                +
//                 Text(   "3000 EXP")
//                    .font(.system(size: 18))
//                    .fontWeight(.semibold)
//            }
            
            ZStack(alignment:.leading, content: {
                
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.4))
                    
                RoundedRectangle(cornerRadius: 4)
                    .fill(ColorConstants.mainColor)
                    .frame(width: getFrameSize().width/2)
            })
            .frame( height: 6)
            .padding(.horizontal,8)
        }
        .frame(width:getFrameSize().width-64)
//        .padding(.horizontal,32)
        .cornerRadius(10)
    }
}

struct SHomeAccountPointsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccountPointsView(vm: HomeAccountViewModel())
    }
}
