//
//  SettingsSettingsRouter.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class SettingsRouter: SettingsRouterInput, HomeTabBarItemRouterProtocol {
    var delegate: HomeRouterDelegate?
    
    weak var viewController: UIViewController?
    
    func configureModule(delegate: HomeRouterDelegate?) -> UIViewController {
        let viewController: SettingsViewController = SettingsViewController.initFromNib(storyboardName: StoryboardName.settings)
        self.delegate = delegate
        SettingsModuleConfigurator().configure(for: viewController, with: self)
        viewController.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "ic_settings"), selectedImage: #imageLiteral(resourceName: "ic_settings_selected"))
        
        let navigation = UINavigationController(rootViewController: viewController)
        return navigation
    }
    
    func navigate() {
        delegate?.navigate(to: .profile)
    }
}
