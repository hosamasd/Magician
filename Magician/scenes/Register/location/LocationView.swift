//
//  LocationView.swift
//  MeetupRemainder
//
//  Created by Vegesna, Vijay V EX1 on 9/19/20.
//  Copyright © 2020 Vegesna, Vijay V. All rights reserved.
//

import SwiftUI
import MapKit

fileprivate let locationFetcher = LocationFetcher()

struct LocationView: View {
//    @EnvironmentObject var vm : HomeReigtserViewModel

    @State var centerCoordinate = CLLocationCoordinate2D()
    @State var currentLocation: CLLocationCoordinate2D?
    @State var hideAddButton = false
    @State var annotation: MKPointAnnotation?
    @Binding var dismiss:Bool
    @Binding var locationText:String
    
    var isAdd = false
    
//    @Binding var isActive: Bool
//    @Binding var enteredLocation: CLLocationCoordinate2D?
//    @State var showLocation = false
    
    func getAddress(loc:CLLocationCoordinate2D) {
        let location = CLLocation(latitude: loc.latitude, longitude: loc.longitude)
        
        location.fetchCityAndCountry { city, country, error in
            guard let city = city, let country = country, error == nil else { return }
            locationText = city + ", " + country
            print(city + ", " + country)  // Rio de Janeiro, Brazil
        }
    }
    
    func geocode(latitude: Double, longitude: Double, completion: @escaping (CLPlacemark?, Error?) -> ())  {
        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: latitude, longitude: longitude)) { completion($0?.first, $1) }
    }
    
    func convertLatLongToAddress(latitude:Double,longitude:Double){
        
        geocode(latitude: latitude, longitude: longitude) { placemark, error in
            guard let placemark = placemark, error == nil else { return }
            // you should always update your UI in the main thread
            DispatchQueue.main.async {
                //  update UI here
                print("address1:", placemark.thoroughfare ?? "")
                print("address2:", placemark.subThoroughfare ?? "")
                print("city:",     placemark.locality ?? "")
                print("state:",    placemark.administrativeArea ?? "")
                print("zip code:", placemark.postalCode ?? "")
                print("country:",  placemark.country ?? "")
                let c = placemark.administrativeArea ?? ""
                let f = placemark.locality ?? ""
                let s = placemark.country ?? ""
                let a = " , "
                
                let ff =  c + a + f + a + a + s
                
                locationText = ff
            }
        }
        
    }
    
    var body: some View {
        ZStack {
            MapView(centerCoordinate: $centerCoordinate, currentLocation: currentLocation, withAnnotation: annotation)
                .edgesIgnoringSafeArea([.leading, .trailing, .bottom])
                .onAppear(perform: {
                    locationFetcher.start()
                })
            
          
            
            if !hideAddButton {
                Circle()
                    .fill(Color.blue)
                    .opacity(0.3)
                    .frame(width: 32, height: 32)
//                    .padding(.horizontal,32)

            }
            
            UserLocationView(self)
                .padding(.horizontal,isAdd ? 16 : 32)

//                .padding(.horizontal,32)

            XMarkLocationView(self)
                .padding(.top,20)
//                .padding(.horizontal,32)
                .padding(.horizontal,isAdd ? 16 : 32)

//                .environmentObject(vm)
                
            
            if !hideAddButton {
                AddButton(self)
                    .padding(.bottom)
                    .padding(.horizontal,isAdd ? 16 : 32)

//                    .padding(.horizontal,32)
            }
            
            
        
//            .background(Color.white)
            
        }
        .edgesIgnoringSafeArea(.all)
       
        
       
//        .sheet(isPresented: $showLocation, content: {
//            LocationView( enteredLocation: $entredLocation))
//        })
//        .navigationBarItems(trailing: Button("Save") {
//            if let location = currentLocation {
//                enteredLocation = location
//                isActive = false
//            } else if annotation != nil {
//                enteredLocation = centerCoordinate
//                isActive = false
//            }
//        })
    }
    struct AddButton: View {
        
        var parent: LocationView
        
        init(_ parent: LocationView) {
            self.parent = parent
        }
        
        var body: some View {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        let location = MKPointAnnotation()
                        location.coordinate = parent.centerCoordinate
                        parent.annotation = location
                        let lat = parent.centerCoordinate.latitude
                        let log = parent.centerCoordinate.longitude
                        parent.convertLatLongToAddress(latitude: lat, longitude: log)
//                        parent.getAddress(loc: parent.centerCoordinate)
                    }) {
                        Image(systemName: "plus")
                            .padding()
                            .background(Color.black.opacity(0.75))
                            .foregroundColor(.white)
                            .font(.title)
                            .clipShape(Circle())
                            .padding(.trailing)
                    }
                }
            }
        }
    }

    struct UserLocationView: View {
        
        var parent: LocationView
        
        init(_ parent: LocationView) {
            self.parent = parent
        }
        
        var body: some View {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if let location = locationFetcher.lastKnownLocation {
                            print("Your location is \(location)")
                            parent.currentLocation = location
                            let lat = location.latitude
                            let log = location.longitude
                            parent.convertLatLongToAddress(latitude: lat, longitude: log)
//                            parent.getAddress(loc: location)
                            withAnimation {
                                parent.hideAddButton = true
                            }
                        } else {
                            print("Your location is unknown")
                        }
                    }) {
                        Image(systemName: "location.circle.fill")
                            .padding()
                            .background(Color.blue.opacity(0.75))
                            .foregroundColor(.white)
                            .font(.title)
                            .clipShape(Circle())
                            .rotationEffect(.degrees(45))
//                            .padding(.horizontal)
//                            .padding(.horizontal,parent.isAdd ? 0 : 16)
                    }
                }
            }
        }
    }
    
    struct XMarkLocationView: View {
//        @EnvironmentObject var vm : HomeReigtserViewModel
//        @ObservedObject var vm : HomeReigtserViewModel

        var parent: LocationView
        
        init(_ parent: LocationView) {
            self.parent = parent
        
        }
        
        var body: some View {
            VStack {
//                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                     
                        
                        
                            withAnimation {
//                                parent.getAddress(loc: parent.centerCoordinate)

                                self.parent.dismiss.toggle()
//                                self.vm.isSHowLocation.toggle()
//                                vm.isGet.toggle()
                            }
                        
                        
                    }) {
                        Image(systemName: "xmark")
                            .padding()
                            .background(Color.black.opacity(0.75))
                            .foregroundColor(.white)
                            .font(.title)
                            .clipShape(Circle())
//                            .rotationEffect(.degrees(45))
//                            .padding(.horizontal,parent.isAdd ? 0 : 16)

//                            .padding(.trailing)
                    }
                }
                Spacer()
            }
            .padding(.top)
        }
    }
}

//struct LocationView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationView(dismiss: .constant(false), locationText: <#Binding<String>#>)
////        LocationView(isActive: .constant(false), enteredLocation: .constant(CLLocationCoordinate2D(latitude: 51.9, longitude: -110.5)))
//    }
//}

extension CLLocation {
    func fetchCityAndCountry(completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(self) { completion($0?.first?.locality, $0?.first?.country, $1) }
    }
}
