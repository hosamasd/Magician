////
////  SSpecialOfferRowView.swift
////  Magician
////
////  Created by hosam on 26/10/2021.
////
//
//import SwiftUI
//
//struct SSpecialOfferRowView: View {
//    @ObservedObject var vm:MainHomeTabViewModel
//    @EnvironmentObject var vmm:HomeMainTabBarViewModel
//    
//    var x =  OfferModel(name: "Nobile Houses", img: "bsfwf", subImg: "1-1", type: "TYPE-TYPE", location: "cairo,egypt", rating: "4.5")
//    
//    var body: some View {
//        VStack(spacing:4) {
//            
//            HStack{
//                
//                Spacer()
//                
//                Text(x.offersRange)
//                    .font(.system(size: 15))
//                    .fontWeight(.semibold)
//                    
//                    .foregroundColor(ColorConstants.mainColor.opacity(0.8))
//                
//                
//            }
//            .padding(.horizontal)
//            
//            HStack {
//                
//                Image(x.img)
//                    .resizable()
//                    //                .aspectRatio(contentMode: .fill)
//                    .frame(width: getImageWidth(),height: 130)//, height: 150)//150 // 200
//                    .overlay(
//                        
//                        Label(
//                            title: { Text(x.rating)
//                                .font(.system(size: 10))
//                                .foregroundColor(.black)
//                                .padding(.leading,-4)
//                            },
//                            icon: { Image( "Icon awesome-star") }
//                        )
//                        .padding(.horizontal,6)
//                        .padding(.vertical,8)
//                        .background(Color.white)
//                        .clipShape(Capsule())
//                        .offset(x: 10.0, y: 10)
//                        
//                        ,alignment:.topLeading)
//                    .cornerRadius(10)
//                
//                //            VStack {
//                //
//                VStack(alignment:.leading) {
//                    
//                
//                    
//                    Label(
//                        title: {
//                            VStack (alignment:.leading,spacing:6){
//    //                            HStack {
//                                    Text(x.name)
//                                        .font(.system(size: 10))
//                                        .fontWeight(.regular)
//                                        .foregroundColor(.black)
//                                    
//    //                                Text(x.offersRange)
//    //                                    .font(.system(size: 10))
//    //                                    .fontWeight(.regular)
//    //
//    //                                    .foregroundColor(ColorConstants.mainColor.opacity(0.8))
//                                    //                                    .offset(y:8)
//                                    //                                        .padding(.top,4)
//    //                            }
//                                //                                .padding(.leading,-4)
//                                Text(x.type)
//                                    .font(.system(size: 8))
//                                    .foregroundColor(.black.opacity(0.8))
//                                //                                .padding(.top,4)
//                            }
//                            .offset(y:-10)
//                        },
//                        icon: {
//                            
//                            Image( x.subImg)
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 23, height: 24)
//                                .padding(6)
//                                .modifier(viewModifiers())
//                            //                            .padding()
//                            
//                            //                        Image("1-3")
//                            //                            .resizable()
//                            //                            .frame(width: 31, height: 36)
//                            //                            .overlay(
//                            //                                Image( x.subImg)
//                            //                                    .resizable()
//                            //                                    .aspectRatio(contentMode: .fit)
//                            //                                    .frame(width: 23, height: 24)
//                            //                            )
//                        }
//                    )
//                    //                .padding(.leading,-4)
//                    
//                    //                Text("chickens stevers")
//                    VStack(alignment:.leading) {
//                        Text("Chicken Skewers")
//                            .font(.system(size: 14))
//                            .fontWeight(.regular)
//                            
//                            .foregroundColor(ColorConstants.mainColor)//.opacity(0.8))
//                        
//                        
//                        Text("Chicken skewers with slices of sweet peppers and dill")
//                            .font(.system(size: 15))
//                            
//                            //                    .font(.system(size: 15))
//                            .fontWeight(.regular)
//                            //                        .multilineTextAlignment(.leading)
//                            .lineLimit(3)
//                            .foregroundColor(Color.black.opacity(0.6))
//                        
//                        //                        .foregroundColor(.black.opacity(0.4))
//                        //                        .padding(.top,-4)
//                    }
//                    //                .padding(.horizontal,8)//16
//                    .padding(.vertical,4)
//                    
//                    //
//                    HStack {
//                        Label(
//                            title: {
//                                Text(x.location)
//                                    .font(.system(size: 10))
//                                    .foregroundColor(Color.black.opacity(0.6))
//                                
//                                //                                .foregroundColor(.gray.opacity(0.8))
//                            },
//                            icon: { Image( "pin") }
//                        )
//                        //                    .padding(.horizontal,8)
//                        
//                        //                    Spacer()
//                        
//                        Label(
//                            title: {
//                                Text("55EGP")
//                                    
//                                    .font(.system(size: 10))
//                                    .fontWeight(.bold)
//                                    .foregroundColor(.green.opacity(1))
//                            },
//                            icon: {
//                                Text("75EGP")
//                                    .font(.system(size: 8))
//                                    
//                                    .fontWeight(.regular)
//                                    .foregroundColor(ColorConstants.mainColor.opacity(0.6))//.opacity(1))
//                                    .overlay(
//                                        Rectangle()
//                                            .fill(ColorConstants.mainColor)
//                                            .frame(height: 1)
//                                            .offset(y: 0)
//                                        , alignment: .center)
//                            }
//                        )
//                        
//                    }
//                    //                .padding(.top)
//                    .padding(.horizontal,8)
//                    //                .padding(.bottom,8)
//                    
//                    
//                    
//                }
//                
//                
//            }
//            .frame(height:140)
//        
//        }
//        .padding(.horizontal,8)
//        .padding(.vertical,8)
//        .frame(width:getFrameSize().width-64)//,height: 145)//,height:220)
//        
//        .background(
//            RoundedRectangle(
//                cornerRadius: 19
//            )
//            .foregroundColor(ColorConstants.topRate)
//            .shadow(
//                color: Color.gray.opacity(0.6),
//                radius: 2.5,
//                x: 0,
//                y: 2
//            )
//    )
//        
//    }
//    
//    func getImageWidth() -> CGFloat {
//        let x = getFrameSize().width-64
//        
//        return  isSmallDevice() ? x / 3 : x/2.5
//    }
//}
//
//struct SpecialOffesrRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        //        ContentView()
//        MainHomeTab()
//            .environmentObject(HomeMainTabBarViewModel())
//    }
//}
