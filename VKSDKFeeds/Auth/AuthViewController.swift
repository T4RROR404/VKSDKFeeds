//
//  AuthViewController.swift
//  VKSDKFeeds
//
//  Created by insomnia on 07.09.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        authService = SceneDelegate.shared().authService
        // Do any additional setup after loading the view.
    }
    @IBAction func sgnInTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }
    

}

