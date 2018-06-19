//
//  HomeHomeRouter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeRouter: HomeRouterInput {
	weak var viewController: UIViewController?
	
	static func configureModule() -> UIViewController {
		let viewController: HomeViewController = HomeViewController.initFromNib(storyboardName: StoryboardName.home)
		
		HomeModuleConfigurator().configureModuleForViewInput(viewInput: viewController)
		
		return viewController
	}
}
