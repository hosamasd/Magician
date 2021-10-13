////
////  LoginEndPoint.swift
////  Workforce Pro
////
////  Created by User on 9/10/20.
////  Copyright © 2020 ASIS Solutions. All rights reserved.
////
//
//
////import Alamofire
//
//enum Result <T:Codable> {
//    case success(T)
//    case failure(String)
//}
//
//
//class NetworkManager {
//    static let shared = NetworkManager.init()
//    private init() {}
//    func getData<T: Decodable>(request: URLBuilder, objType: T.Type, completionHandler:  @escaping (_ result: Result<T>)->Void) {
//        AF.request(request).responseData {
//            (response) in
//            switch response.result {
//            case .failure(let error):
//                if(response.response?.statusCode == 401) {
//                    completionHandler(Result.failure( NSLocalizedString("Authorization has been denied for this request", comment: "")))
//                } else {
//                    completionHandler(Result.failure( error.localizedDescription ))
//                }
//            case .success(let value):
//                do {
//                    let result = try JSONDecoder().decode(objType.self, from: value)
//                   completionHandler(Result.success(result))
//                }catch let error {
//                    completionHandler(Result.failure(error.localizedDescription))
//                }
//            }
//        }
//    }
//    
//    
//    func getDataWithResponseCode<T: Decodable>(request: URLBuilder, objType: T.Type, completionHandler:  @escaping (_ result: Result<T> , _ code: Int)->Void ) {
//        AF.request(request).responseData {
//            (response) in
//            switch response.result {
//            case .failure(let error):
//                if(response.response?.statusCode == 401) {
//                    completionHandler(Result.failure( NSLocalizedString("Authorization has been denied for this request", comment: "")) ,response.response?.statusCode ?? 0 )
//                } else {
//                    completionHandler(Result.failure(error.localizedDescription),response.response?.statusCode ?? 0)
//                }
//            case .success(let value):
//                do {
//                    let result = try JSONDecoder().decode(objType.self, from: value)
//                    completionHandler(Result.success(result),response.response?.statusCode ?? 0)
//                }catch let error {
//                    completionHandler(Result.failure(error.localizedDescription),response.response?.statusCode ?? 0)
//                }
//            }
//        }
//    }
//    
//    
//    
//    func uploadFile<T: Decodable>(request: URLBuilder, objType: T.Type, completionHandler:  @escaping (_ result: Result<T>)->Void) {
//        AF.upload(multipartFormData: {
//            (multipartFormData) in
//            
//            for (key, value) in request.paramaters ?? [:] {
//                if let val = value as? String {
//                    multipartFormData.append(val.data(using: .utf8)!, withName: key)
//                }
//            }
//    
//            for (key, value) in request.images ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "\(key).jpg", mimeType: "image/jpeg")
//            }
//            
//            for (key, value) in request.videos ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "video.mp4", mimeType: "video/mp4")
//            }
//            
//            for (key, value) in request.files ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "\(key)", mimeType: "text/plain")
//            }
//        }, to: request.url, method: request.method, headers: request.header)
//            .responseData { (response) in
//                switch response.result {
//                case .failure(let error):
//                    completionHandler(Result.failure( error.localizedDescription ))
//                case .success(let value):
//                    do {
//                        let result = try JSONDecoder().decode(objType.self, from: value)
//                       completionHandler(Result.success(result))
//                    }catch let error {
//                        completionHandler(Result.failure(error.localizedDescription))
//                }
//            }
//        }
//    }
//    
//    
//    func uploadFileWithCode<T: Decodable>(request: URLBuilder, objType: T.Type, completionHandler:  @escaping (_ result: Result<T>, _ code: Int)->Void) {
//        AF.upload(multipartFormData: {
//            (multipartFormData) in
//            
//            for (key, value) in request.paramaters ?? [:] {
//                if let val = value as? String {
//                    multipartFormData.append(val.data(using: .utf8)!, withName: key)
//                }
//            }
//    
//            for (key, value) in request.images ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "\(key).jpg", mimeType: "image/jpeg")
//            }
//            
//            for (key, value) in request.videos ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "video.mp4", mimeType: "video/mp4")
//            }
//            
//            for (key, value) in request.files ?? [:] {
//                multipartFormData.append(value, withName: key, fileName: "\(key)", mimeType: "text/plain")
//            }
//        }, to: request.url, method: request.method, headers: request.header)
//            .responseData { (response) in
//                switch response.result {
//                case .failure(let error):
//                    completionHandler(Result.failure( error.localizedDescription ), response.response?.statusCode ?? 0)
//                case .success(let value):
//                    do {
//                        if response.response?.statusCode ?? 500 >= 200 && response.response?.statusCode ?? 500 <= 229{
//                            let result = try JSONDecoder().decode(objType.self, from: value)
//                           completionHandler(Result.success(result),response.response?.statusCode ?? 0)
//                        }else{
//                            let result = try JSONDecoder().decode(SendRequestResponse.self, from: value)
//                            completionHandler(Result.failure(result.msg ?? "something went wrong".localized),response.response?.statusCode ?? 0)
//                        }
//                     
//                    }catch let error {
//                        completionHandler(Result.failure(error.localizedDescription),response.response?.statusCode ?? 0)
//                }
//            }
//        }
//    }
//    
//    func getPDFData(request: URLBuilder, completionHandler:  @escaping (_ result: Result<Data>)->Void) {
//        AF.request(request).response {
//            (response) in
//            switch response.result {
//            case .failure(let error):
//                if(response.response?.statusCode == 401) {
//                    completionHandler(Result.failure( NSLocalizedString("Authorization has been denied for this request", comment: "")))
//                } else {
//                    completionHandler(Result.failure( error.localizedDescription ))
//                }
//            case .success(let data):
//                completionHandler(Result.success(data ?? Data() ))
////                if  data != Data() {
////                    completionHandler(Result.success(data))
////                }else{
////                    completionHandler(Result.failure("No PDF Found".localized))
////                }
//            }
//        }
//    }
//}
