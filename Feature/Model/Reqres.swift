//
//  Reqres.swift
//  swiftUIReqresApi
//
//  Created by Tuğrul Özpehlivan on 8.07.2022.
//

import Foundation


struct User: Codable {
    var page, perPage, total, totalPages: Int?
    var data: [Reqres]?
}

// MARK: - Reqres
struct Reqres : Codable, Identifiable{
    var id: Int?
    var email: String?
    var first_name: String?
    var last_name: String?
    var avatar: String?
}
