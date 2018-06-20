//
//  HomeHomeViewController.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
    }

    func setupInitialState() {
        selectedIndex = 0
    }
}
