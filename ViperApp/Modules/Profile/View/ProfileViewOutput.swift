//
//  ProfileProfileViewOutput.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

protocol ProfileViewOutput {

    /**
        Notify presenter that view is ready
    */
    func viewIsReady()
    
    /**
        Navigate to next tab item
    */
    func navigate()
}
