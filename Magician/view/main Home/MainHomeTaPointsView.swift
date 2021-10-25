//
//  MainHomeTaPointsView.swift
//  Magician
//
//  Created by hosam on 14/10/2021.
//

import SwiftUI

struct MainHomeTaPointsView: View {
    @ObservedObject var vm:MainHomeTabViewModel

    var body: some View {
        VStack {
            HStack{
                
                Label(
                    title: {
                        
                        VStack(alignment:.leading) {
                            
                            Text("Eslam Hisham")

                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(Color("mains"))
//                                .padding(.top,20)
                            
                            Text("( Superman )")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
//                        .padding(.top,20)
                        
                    },
                    icon: {  Image("Profile picture")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .offset(y:12)
                        .padding(.horizontal,6)
//                        .offset(y:-8)
                    }
    )
                
                Spacer()
                
                Text("2700 /\n")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("mains"))
                +
                 Text(   "3000 EXP")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
            }
            
            ZStack(alignment:.leading, content: {
                
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.4))
                    
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color("mains"))
                    .frame(width: getFrameSize().width/4)
            })
            .frame( height: 6)
            .padding(.leading,76)

        }
        .padding(.horizontal,64)
    }
}

//struct MainHomeTaPointsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainHomeTab()
////        MainHomeTaPointsView(vm: MainHomeTabViewModel())
//    }
//}
