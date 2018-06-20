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
    
    func configureModule(title: String) -> UIViewController {
        let viewController: SettingsViewController = SettingsViewController.initFromNib(storyboardName: StoryboardName.settings)
        SettingsModuleConfigurator().configure(for: viewController, with: self)
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: TabBarItemType.settings.rawValue)
        
        let navigation = UINavigationController(rootViewController: viewController)
        return navigation
    }
}
