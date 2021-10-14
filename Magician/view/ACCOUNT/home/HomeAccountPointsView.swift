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

                                .font(.customFontSystem(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("mains"))
                            
                            Text("( Superman )")
                                .font(.customFontSystem(size: 13))
                                .fontWeight(.semibold)
                        }
                        
                    },
                    icon: {  Image("Profile picture")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .offset(y:8)
                        .padding(.trailing)
                    }
    )
                
                Spacer()
                
                Text("1500 /\n")
                    .font(.customFontSystem(size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("mains"))
                +
                 Text(   "3000 EXP")
                    .font(.customFontSystem(size: 18))
                    .fontWeight(.semibold)
            }
            
            ZStack(alignment:.leading, content: {
                
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.4))
                    
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color("mains"))
                    .frame(width: getFrameSize().width/2)
            })
            .frame( height: 6)

        }
        .padding(.horizontal,32)
//        .frame(width:getFrameSize().width-32)

    }
}

struct HomeAccountPointsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAccountPointsView(vm: HomeAccountViewModel())
//        ContentView()
    }
}
