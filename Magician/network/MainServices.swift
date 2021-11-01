//
//  MainServices.swift
//  PlayIT
//
//  Created by hosam on 5/23/21.
//  Copyright © 2021 Bola Fayez. All rights reserved.
//

import SwiftUI
import UIKit
//import Alamofire

let mainApiUrl = "http://3.127.25.100:8080/api/"//.toSecrueHttps()
let mainAuthToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOnt9LCJhdWQiOnt9LCJpYXQiOjEzNTY5OTk1MjQsIm5iZiI6MTM1NzAwMDAwMH0.6-ckSxPZVbSUckBZkX_ccGKlA1O2uCf2Rx8ikO5Y_cQ"


class APIManager {
    
//    class func headers() -> HTTPHeaders {
//        var headers: HTTPHeaders = [
//            //            "Content-Type": "application/json",
//            //            "Accept": "application/json"
//        ]
//
//        //        if let authToken = UserDefaults.standard.string(forKey: "auth_token") {
//        headers["Authorization"] = "Bearer" + " " + mainAuthToken
//
//
//        //        }
//
//        return headers
//    }
}
class MainServices{
    
    
   
    
    static func servicesPostAUTHMethodGenerics<T:Codable>(urlString:String,postString:String,photo:UIImage?=nil,completion:@escaping (T?,Error?)->Void)  {
        
        guard let urlsString = postString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return  }
        let ddd = urlString+"?"+urlsString
        
        
//        AF.upload(multipartFormData:{ multipartFormData in
//            if let data = photo?.pngData() {
//                multipartFormData.append(data, withName: "profileImage", fileName: "asd.jpeg", mimeType: "image/jpeg")
//            }
//            //                 multipartFormData.append(unicornImageURL, withName: "unicorn")
//            //                 multipartFormData.append(rainbowImageURL, withName: "rainbow")},
//            //               usingThreshold:UInt64.init(),
//        },
//        to:ddd,
//        method:.post,
//        headers:APIManager.headers())//,
//        //               encodingCompletion: { encodingResult in
//        .response { resp in
//            switch resp.result{
//            case .failure(let error):
//                print(error)
//                completion(nil,error)
//            case.success( _):
//                print("🥶🥶Response after upload Img: (resp.result)")
//
//                guard let data = resp.data else {return}
//                do {
//                    let objects = try JSONDecoder().decode(T.self, from: data)
//                    // success
//                    completion(objects,nil)
//                } catch let error {
//                    completion(nil,error)
//                }
//            }
//        }
        
    }
    
    static func servicesGetMethodGenerics<T:Codable>(postString:String,w:[String:Any]? = nil ,completion:@escaping (T?,Error?)->Void)  {
        let p:[String:Any] = ["phone":"0100258255"]
        
//        AF.request(postString, method: .get, parameters: p, headers: APIManager.headers())
//
//            .responseJSON { response in
//                switch response.result {
//                case .success(_):
//                    guard let data = response.data else {return}
//                    do {
//                        let objects = try JSONDecoder().decode(T.self, from: data)
//                        // success
//                        completion(objects,nil)
//                    } catch let error {
//                        completion(nil,error)
//                    }
//                    break
//                //your success code
//
//                case .failure(let err):
//                    completion(nil,err)
//                //                   your failure code
//
//                }
//                print("Response: \(response)")
//            }
        
        
    }
    
    static func servicesPutMethodGenerics(postString:String,w:[String:Any]? = nil ,completion:@escaping (String?,Error?)->Void)  {
        let p:[String:Any] = ["name":"radwan",
                              "bio":"fff",
                              "email":"email",
                              "birthdate":"10/6/1996",
                              "gender":"male",
                              
        ]
        
//        AF.request(postString, method: .put, parameters: w, headers: APIManager.headers())
//
//            .responseJSON { response in
//                switch response.result {
//                case .success(_):
//                    guard let data = response.data else {return}
//                    let ww = String(data: data, encoding: .utf8)
//                    completion(ww,nil)
//                //                    do {
//                //                        let objects = try JSONDecoder().decode(T.self, from: data)
//                //                        // success
//                //                        completion(objects,nil)
//                //                    } catch let error {
//                //                        completion(nil,error)
//                //                    }
//                //                    break
//                //your success code
//
//                case .failure(let err):
//                    completion(nil,err)
//                //                   your failure code
//
//                }
//                print("Response: \(response)")
//            }
        
        
    }
    
    static func servicesGetWithoutPaMethodGenerics<T:Codable>(postString:String,completion:@escaping (T?,Error?)->Void)  {
        
//        AF.request(postString, method: .get, headers: APIManager.headers())
//
//            .responseJSON { response in
//                switch response.result {
//                case .success(_):
//                    guard let data = response.data else {return}
//                    do {
//                        let objects = try JSONDecoder().decode(T.self, from: data)
//                        // success
//                        completion(objects,nil)
//                    } catch let error {
//                        completion(nil,error)
//                    }
//                    break
//                //your success code
//
//                case .failure(let err):
//                    completion(nil,err)
//                //                   your failure code
//
//                }
//                print("Response: \(response)")
//            }
        
        
    }
    
    
    static func servicesPostAfMethodGenerics<T:Codable>(p:[String:Any],postString:String,url:URL,completion:@escaping (T?,Error?)->Void)  {
        
        let w:[String:Any] = [
            "phone":"0100258255",
            "verification":"664977"
        ]
        
//        AF.request(postString, method: .post, parameters:p, headers: APIManager.headers())
//            //            .validate()
//            .responseJSON { response in
//                switch response.result {
//                case .success(_):
//                    guard let data = response.data else {return}
//                    do {
//                        let objects = try JSONDecoder().decode(T.self, from: data)
//                        // success
//                        completion(objects,nil)
//                    } catch let error {
//                        completion(nil,error)
//                    }
//                    break
//                //your success code
//
//                case .failure(let err):
//                    completion(nil,err)
//                //                   your failure code
//
//                }
//                print("Response: \(response)")
//            }
        
        
    }
    
    static func authServicesGetMethodGenerics<T:Codable>(urlString:String,completion:@escaping (T?,Error?)->Void)  {
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                let objects = try JSONDecoder().decode(T.self, from: data!)
                // success
                completion(objects, err)
            } catch let error {
                completion(nil, error)
            }
        }.resume()
    }
    
    static func servicesPostMethodGeneric<T:Codable>(postString:String,url:URL,completion:@escaping (T?,Error?)->Void)  {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, err) in
            if let error = err {
                completion(nil,error)
            }
            guard let data = data else {return}
            do {
                let objects = try JSONDecoder().decode(T.self, from: data)
                // success
                completion(objects,nil)
            } catch let error {
                completion(nil,error)
            }
        }.resume()
    }
    
}
