//
//  Service.swift
//  swiftUIReqresApi
//
//  Created by Tuğrul Özpehlivan on 8.07.2022.
//

import Foundation
import Alamofire

protocol ReqresProtocol {
    
    func fetchReqres() async -> User?
}

struct ReqresService : ReqresProtocol {
    
    func fetchReqres() async -> User? {
        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        
        return await request.response.value
    }
}


private enum ServicePath : String {
    case users = "users?page=2"
    
    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
}
