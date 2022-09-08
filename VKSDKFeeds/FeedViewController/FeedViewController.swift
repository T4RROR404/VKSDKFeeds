//
//  FeedViewController.swift
//  VKSDKFeeds
//
//  Created by insomnia on 08.09.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private let networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        networkService.getFeed()
    }
}
