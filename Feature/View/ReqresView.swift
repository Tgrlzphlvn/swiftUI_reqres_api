//
//  ContentView.swift
//  swiftUIReqresApi
//
//  Created by Tuğrul Özpehlivan on 8.07.2022.
//

import SwiftUI
import Kingfisher

struct ReqresView: View {
    @StateObject var reqresViewModel = ReqresViewModel(reqresService: ReqresService())
    
    var body: some View {
        List(reqresViewModel.reqres?.data ?? []) { item in
            
            VStack {
                HStack {
                    KFImage(URL(string: item.avatar ?? "")).resizable().frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.08)
                        
                        .clipShape(Circle())
                    Text(item.first_name ?? "Didier").font(.title3 .bold())
                    Text(item.last_name ?? "Drogba").font(.title3 .bold())
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text(item.email ?? "Drogba@gmail.com")
                        .font(.subheadline)
                        .frame(alignment: .bottomTrailing)
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ReqresView()
    }
}
