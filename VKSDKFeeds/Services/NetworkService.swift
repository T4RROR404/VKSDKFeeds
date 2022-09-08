//
//  NetworkService.swift
//  VKSDKFeeds
//
//  Created by insomnia on 08.09.2022.
//

import UIKit

final class NetworkService {
    
    private let authService: AuthService
    
    init(authService: AuthService = SceneDelegate.shared().authService) {
        self.authService = authService
    }
    
    func getFeed() {
        var components = URLComponents()
        let token = authService.token
        let params = ["filters": "post,photo"]
        var allParams = params
        allParams["access_token"] = token
        allParams["v"] = API.version
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newsFeed
        components.queryItems = allParams.map{URLQueryItem(name: $0, value: $1)}
        let url = components.url!
        print(url)
    }
}
