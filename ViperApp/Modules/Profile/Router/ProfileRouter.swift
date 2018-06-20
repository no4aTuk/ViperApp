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
    
    func configureModule(delegate: HomeRouterDelegate?) -> UIViewController {
        let viewController: ProfileViewController = ProfileViewController.initFromNib(storyboardName: StoryboardName.profile)
        
        self.delegate = delegate
        
        ProfileModuleConfigurator().configure(for: viewController, with: self)
        viewController.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "ic_eat"), selectedImage: #imageLiteral(resourceName: "ic_eat_selected"))
        
        let navigation = UINavigationController(rootViewController: viewController)
        return navigation
    }
    
    func navigate() {
        delegate?.navigate(to: .products)
    }
}
