////
////  MonthlyReportEndpoint.swift
////  Workforce Pro
////
////  Created by Mahmoud Abdul-Wahab on 11/08/2021.
////  Copyright © 2021 ASIS Solutions. All rights reserved.
////
//
//
//import Alamofire
//
//struct MonthlyReportEndpoint: URLBuilder {
//    
//    private let path = ApiURL.URLPath.reportMonthlyAttendance.rawValue
//    var startDate: String
//    var endDate  : String
//    var fileNumber : String?
//    var selectedStatusType: Int?
//    var selectedAbsentType: Int?
//    var selectedDepartement: Int?
//    
//    var url: URL {
//        return ApiURL.BaseURL.appendingPathComponent(path)
//    }
//
//    var paramaters: [String : Any]? {
//       return [
//        "fileNumber": fileNumber ?? "null",
//        "fromDate": startDate,
//        "toDate": endDate,
//        "statusId": "\(selectedStatusType ?? 0)",
//        "absenceTypeId": "\(selectedAbsentType ?? 0)",
//        "orgId": "\(selectedDepartement ?? 0)"
//        ]
//    }
//    
//    var method: HTTPMethod {
//        return .post
//    }
//    
//    var encoding: ParameterEncoding {
//        return JSONEncoding.default
//    }
//    
//    init(startDate: String, endDate: String, fileNumber: String?, selectedStatusType: Int?
//    , selectedAbsentType: Int?, selectedDepartement: Int? ) {
//        self.startDate  = startDate
//        self.endDate    =  endDate
//        self.fileNumber = fileNumber
//        self.selectedStatusType  = selectedStatusType
//        self.selectedAbsentType  = selectedAbsentType
//        self.selectedDepartement = selectedDepartement
//    }
//}
