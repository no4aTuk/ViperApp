//
//  HomeHomeRouter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeRouter: HomeRouterInput {
	weak var viewController: UITabBarController?
    let childRouters: [HomeTabBarItemRouterProtocol]!
    
    public init(childRouters: [HomeTabBarItemRouterProtocol]) {
        self.childRouters = childRouters
    }
    
    private init() {
        childRouters = []
    }
		
    func configureModule() -> UIViewController {
		let viewController: HomeViewController = HomeViewController.initFromNib(storyboardName: StoryboardName.home)
		
        HomeModuleConfigurator().configureModule(for: viewController, with: self)
        
        //setup child tab items
        var controllers: [UIViewController] = []
        for (i, router) in childRouters.enumerated() {
            let childVC = router.configureModule(title: "Hello Products View Controller \(i)")
            controllers.append(childVC)
        }
        viewController.viewControllers = controllers
        viewController.selectedIndex = 1
		
		return viewController
	}
}
