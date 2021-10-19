//
//  FirstStepView.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct FirstStepView: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)

    var body: some View {
        VStack {
            
          
            HStack {
                Text("First Step")
                        .font(.boldCustomFontSystem(size: 14))
                    .fontWeight(.bold)
                Spacer()
            }
                
                LazyVGrid(columns: columns,spacing:12){
                    
                    // assigning name as ID...
                    
                    ForEach(0...4,id:\.self){index in
                        FirstStepViewRowView(x: index)
//                        SelectedItemScenesBottomRowView(x:gradient)
                        //                            HomeFilterRowView(x:gradient)
                        //                                    GradientView(columns: $columns, gradient: gradient, vm: vm)
                    }
                }
                
              
            
            
        }
    }
}

struct FirstStepView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItemAddNotes()
    }
}
