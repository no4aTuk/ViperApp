//
//  HomeHomeRouter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeRouter: HomeRouterInput {
	weak var viewController: HomeViewController?
	let childRouters: [HomeTabBarItemRouterProtocol]!
	
	public init(childRouters: [HomeTabBarItemRouterProtocol]) {
		self.childRouters = childRouters
	}
	
	private init() {
		childRouters = []
	}
	
	static func configureModule() -> UIViewController {
		let viewController: HomeViewController = HomeViewController.initFromNib(storyboardName: StoryboardName.home)
		
		HomeModuleConfigurator().configureModuleForViewInput(viewInput: viewController)
		
		
		return viewController
	}
}
