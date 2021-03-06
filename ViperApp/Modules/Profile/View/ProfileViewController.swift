//
//  ProfileProfileViewController.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ProfileViewInput {

    var output: ProfileViewOutput!
    
    //MARK: Outlets

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        setupInitialState()
    }
    
    //MARK: Actions
    @IBAction func someAction(_ sender: UIButton) {
        output.navigate()
    }


    // MARK: ProfileViewInput
    func setupInitialState() {
        navigationItem.title = "Profile"
    }
}
