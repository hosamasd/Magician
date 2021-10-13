////
////  LoginEndPoint.swift
////  Workforce Pro
////
////  Created by User on 9/10/20.
////  Copyright © 2020 ASIS Solutions. All rights reserved.
////
//
//import Alamofire
//
//protocol URLBuilder: URLRequestConvertible {
//    var url: URL {get}
//    var method: HTTPMethod {get}
//    var paramaters: [String: Any]? {get}
//    var images: [String:Data]? {get}
//    var videos: [String:Data]? {get}
//    var files: [String:Data]? {get}
//    var encoding: ParameterEncoding {get}
//    var header: HTTPHeaders {get}
//    var urlRequest: URLRequest { get }
//}
//                        
//extension URLBuilder {
//    
//    var header: HTTPHeaders {
//        var headers = HTTPHeaders()
//        headers["Accept"] = "application/json; charset=utf-8"
//        headers["Authorization"] = "Bearer " + (AppHelper.token ?? "")
//        headers["Accept-Language"] =  AppHelper.getLanguage() == "en" ? "en" : "ar"
//        return headers
//    }
//    
//    var images: [String:Data]? {
//        return nil
//    }
//    
//    var videos: [String:Data]? {
//        return nil
//    }
//    
//    var files: [String:Data]? {
//        return nil
//    }
//    
//    var urlRequest: URLRequest {
//        var request = URLRequest(url: url)
//        request.httpMethod = method.rawValue
//        request.allHTTPHeaderFields = header.dictionary
//        return request
//    }
//    
//    func asURLRequest() throws -> URLRequest {
//        return try encoding.encode(urlRequest, with: paramaters)
//    }
//}
