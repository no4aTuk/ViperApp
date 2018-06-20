//
//  SettingsSettingsInitializer.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class SettingsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var settingsViewController: SettingsViewController!

    override func awakeFromNib() {

        let configurator = SettingsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: settingsViewController)
    }

}
