//
//  FeedViewController.swift
//  VKSDKFeeds
//
//  Created by insomnia on 08.09.2022.
//

import UIKit

class FeedViewController: UIViewController {

    private var fetcher: DataFetcher = NeworkDataFetcher(networking: NetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        fetcher.getFeed { (feedResponse) in
            guard let feedResponse = feedResponse else { return }
            feedResponse.items.map({ (feedItem) in
                print(feedItem.date)
            })
        }
    }
}
