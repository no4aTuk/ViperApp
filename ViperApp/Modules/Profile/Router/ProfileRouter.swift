//
//  ProfileProfileRouter.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProfileRouter: ProfileRouterInput, HomeTabBarItemRouterProtocol {
    var delegate: HomeRouterDelegate?
    
    weak var viewController: UIViewController?
    
    func configureModule(title: String) -> UIViewController {
        let viewController: ProfileViewController = ProfileViewController.initFromNib(storyboardName: StoryboardName.profile)
        ProfileModuleConfigurator().configure(for: viewController, with: self)
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: TabBarItemType.three.rawValue)
        
        let navigation = UINavigationController(rootViewController: viewController)
        return navigation
    }
}
