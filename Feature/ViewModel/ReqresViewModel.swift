//
//  ReqresViewModel.swift
//  swiftUIReqresApi
//
//  Created by Tuğrul Özpehlivan on 8.07.2022.
//

import Foundation

class ReqresViewModel: ObservableObject {
    
    init(reqresService : ReqresService) {
        self.reqresService = reqresService
        
        Task.detached {
            await self.fetchItems()
        }
    }
    
    
    let reqresService : ReqresProtocol
    @Published var reqres : User?
    
    func fetchItems() async {
        reqres = await reqresService.fetchReqres()
    }
}
