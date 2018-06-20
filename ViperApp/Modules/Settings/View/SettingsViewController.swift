//
//  SettingsSettingsViewController.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, SettingsViewInput {

    var output: SettingsViewOutput!
    
    //MARK: Outlets
    @IBAction func someAction(_ sender: AnyObject) {
        output.navigate()
    }

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        setupInitialState()
    }


    // MARK: SettingsViewInput
    func setupInitialState() {
        navigationItem.title = "Settings"
    }
}
