//
//  ApiURL.swift
//  Workforce Pro
//
//  Created by Mahmoud Abdul-wahab on 1/25/21.
//

import Foundation

struct ApiURL {
    
//    static var baseURL = (UserDefaults.standard.string(forKey: "BASE_URL_KEY") ?? "http:/161.97.129.229:4000/WFProAPI/api/Mobile") as String
//
//    static var BaseURL = URL(fileURLWithPath: baseURL)
//
    
    static var BaseURL: URL {
           let baseURL =  "http://161.97.129.229:9092/api" as String
           return URL(string: baseURL)! //92
       }
    
    enum URLPath: String {
        case login = "Mobile/login"
        case requestsOtp    = "Mobile/ResendOTP"
        case changeMobileUID = "Mobile/MobileLoginUID"
        case changePassword = "Mobile/ChangePwd"
        case forgetPassword = "Mobile/ForgotPassword"
        case userProfileInfo = "Mobile/GetUserProfileInfo"
        case empProfileInfo = "Mobile/GetEmpProfileInfo"
        case myTeamInfo = "Mobile/GetMyTeamInfo"
        
        case empAttendCalender = "Mobile/GetEmpAttendCalender"
        case empAttendSummary = "Mobile/GetEmpAttendSummary"
        case teamAttendSummary = "Mobile/GetTeamAttendSummary"
        
        case empUpcomingPerm = "Mobile/GetEmpUpcomingPerm"
        case empUpcomingVac = "Mobile/GetEmpUpcomingVac"
        case empRequestsSummary = "Mobile/GetMyRequestsSummary"
        
        case permissionTypes = "Mobile/GetPermissionTypes"
        case vacationTypes = "Mobile/GetVacationTypes"
        case transactionTypes = "Mobile/GetTransactionTypes"
        case requestTypes = "Mobile/GetRequestTypes"
        case requestStatus = "Mobile/GetRequestStatus"
        case requestSummary = "Mobile/GetTeamRequestsSummary"
        case requests = "Mobile/GetRequests"
        case myRquests = "Mobile/GetMyRequests"
        case getDays = "Mobile/GetDays"
        
        case empLastCheck = "Mobile/GetEmpLastCheck"
        case validLocation = "Mobile/ValidateLocation"
        case addSiteTransaction = "Mobile/AddSiteTransaction"
        
        case myOvertime = "Mobile/GetMyOvertime"
        case myTransactions = "Mobile/GetMyDeviceTransactions"
        case savePermissionRequest = "Mobile/SavePermissionRequest"
        case saveVacationRequest = "Mobile/SaveVacationRequest"
        case savetransactionRequest = "Mobile/SaveManualTransRequest"
        case saveEditTransRequest = "Mobile/SaveEditTransRequest"
        case saveOvertimeRequest = "Mobile/SaveEmpOvertimeRequest"
        case saveRequestStep = "Mobile/SaveRequestStep"
        case usernotifications = "Mobile/GetUserNotifications"
        case about = "Mobile/AboutUs"
        case cancelRequest = "Mobile/CancelRequest"
        
        case getTopThreeEmployee = "Mobile/Dashboard_GetTopEmployees"
        
        case getMangerEmployees = "MobileEmployee/GetMangerEmployees"
        case addEmployeeSiteTransaction = "MobileEmployee/AddEmployeeSiteTransaction"
        case getRequestInfo = "MobileEmployee/GetApprovalsWithNotes"
        case checkIfLDAPOn  = "Mobile/CheckLDAPAuthentication"
        case loginWithFaceImage = "FaceRecognition/FaceVerify"
        case registerAndEditEployeeFace = "FaceRecognition/RegisterFaceImage"
        case enableFaceLogin            = "FaceRecognition/FaceRecognitionIsEnabled"
        
        case reportMonthlyAttendance     = "MobileReports/ReportMonthlyAttendance"
        case reportDailyAttendance       = "MobileReports/ReportDailyAttendance"
        case reportDailyAbsence          = "MobileReports/ReportDailyAbsence"
        
        case getAllDepartements          = "Mobile/GetUserDepartments"
        case reportStatusTypes           = "Mobile/GetStatus"
        case reportAbsentTypes           = "Mobile/GetAbsentTypes"
        
    }
}
