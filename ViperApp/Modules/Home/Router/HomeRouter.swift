//
//  HomeHomeRouter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeRouter {
	weak var viewController: UITabBarController?
    var childRouters: [HomeTabBarItemRouterProtocol]!
    
    public init(childRouters: [HomeTabBarItemRouterProtocol]) {
        self.childRouters = childRouters
    }
    
    private init() {
        childRouters = []
    }
		
    func configureModule() -> UIViewController {
		let viewController: HomeTabBarViewController = HomeTabBarViewController.initFromNib(storyboardName: StoryboardName.common)
		
        self.viewController = viewController
        
        //setup child tab items
        var controllers: [UIViewController] = []
        for router in childRouters {
            let childVC = router.configureModule(delegate: self)
            controllers.append(childVC)
        }
        viewController.viewControllers = controllers
		
		return viewController
	}
}

extension HomeRouter: HomeRouterDelegate {
    func navigate(to tabItem: TabBarItemType) {
        self.viewController?.selectedIndex = tabItem.rawValue
    }
}
