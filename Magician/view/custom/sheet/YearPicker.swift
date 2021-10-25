//
//  YearPicker.swift
//  Magician
//
//  Created by hosam on 19/10/2021.
//

import SwiftUI

struct YearPicker: View {
//            private let numberFormatter: NumberFormatter = {
//                let nf = NumberFormatter()
//                nf.usesGroupingSeparator = false
//                return nf
//            }()
//
//            @State private var selectedYearIndex: Int
//            private let years: [Int]
//
//            init(start: Int, end: Int) {
//                let years = Array(start...end)
//                self._selectedYearIndex = State(initialValue: years.startIndex)
//                self.years = years
//            }
//
//            func yearString(at index: Int) -> String {
//                let selectedYear = years[index]
//                return numberFormatter.string(for: selectedYear) ?? selectedYear.description
//            }
//
//            var body: some View {
//                VStack {
//                    Text("Your birth year is \(yearString(at: selectedYearIndex))")
//                    Picker("Year", selection: $selectedYearIndex) {
//                        ForEach(years.indices) { yearIndex in
//                            Text("\(self.yearString(at: yearIndex))")
//                        }
//                    }
//                }
//            }
        
    
    
    @State var monthIndex: Int = 0
    @State var yearIndex: Int = 0

    let monthSymbols = Calendar.current.monthSymbols
//    let years = Array(Date().year..<Date().year+10)
    let years = Array(1980..<Date().year)

    @Binding var isMonth:Bool
    @Binding var isYear:Bool

    @Binding var monthText:String

    @Binding var yearText:String

    var body: some View {
        VStack {
            
            HStack {
                
                Spacer()
                
                Button(action: {withAnimation{
                    isYear=false
                    isMonth=false
                }}, label: {
                    Text("Done")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                })
                
                Spacer()
                
            }
            .padding(.horizontal)
            .padding(.vertical)
            .padding(.top)
            
            GeometryReader{ geometry in
                ZStack {
                    HStack(spacing: 0) {
                        Spacer()  
                        Picker(selection: self.$yearIndex.onChange(self.yearChanged), label: Text("")) {
                            ForEach(0..<self.years.count) { index in
                                Text(String(self.years[index]))
                                    .onTapGesture(perform: {
                                        print(index)
                                    })
                            }
                        }
                        .frame(maxWidth: geometry.size.width / 2).clipped()
                        
                        Spacer()
                    }
//                    .frame(height:200)

                    .opacity(isYear ? 1 : 0)
                    
                    if isMonth {
                        
                        HStack(spacing: 0) {
                            Spacer()
                            Picker(selection: self.$monthIndex.onChange(self.monthChanged), label: Text("")) {
                                ForEach(0..<self.monthSymbols.count) { index in
                                    Text(self.monthSymbols[index])
                                        .onTapGesture(perform: {
                                            print(index)
                                        })
                                }
                            }.frame(maxWidth: geometry.size.width / 2).clipped()
                            .padding(.bottom,40)

                            Spacer()
                        
                    }
                        .frame(height:200)

                        
                    }
                }
            }
            
            .frame(height:200)
//            .backgroundColor(.red)
        }
        .frame(height:250)


    }
    func monthChanged(_ index: Int) {
        print("\(years[yearIndex]), \(index+1)")
        print("Month: \(monthSymbols[index])")
    
//        yearText = "\(years[yearIndex])"
        monthText = "\(monthIndex)"//monthSymbols[monthIndex]

//        if isMonth {
//            isMonth=false
//        }
//        if isYear {
//            isYear = false
//        }
    }
    func yearChanged(_ index: Int) {
        print("\(years[index]), \(monthIndex+1)")
        print("Month: \(monthSymbols[monthIndex])")
//        monthText = "\(monthIndex)"//monthSymbols[monthIndex]
        yearText = "\(years[yearIndex])"

//        if isMonth {
//            isMonth=false
//        }
//        if isYear {
//            isYear = false
//        }
    }
}

struct YearPicker_Previews: PreviewProvider {
    static var previews: some View {
        SContentView()
//        YearPicker(isMonth: .constant(false), isYear: .constant(true), monthText: .constant(""), yearText: .constant(""))
//        YearPicker(isMonth: .constant(false))//start: 2000, end: 2020)
        
    }
}

extension Binding {
    func onChange(_ completion: @escaping (Value) -> Void) -> Binding<Value> {
        .init(get:{ self.wrappedValue }, set:{ self.wrappedValue = $0; completion($0) })
    }
}

extension Date {
    var year: Int { Calendar.current.component(.year, from: self) }
}
