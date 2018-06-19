//
//  ProductsProductsRouter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProductsRouter: ProductsRouterInput {
	weak var viewController: UIViewController?
	var delegate: HomeRouterDelegate?
	
	static func prepareModule() -> UIViewController {
		let viewController = ProductsViewController.initFromNib(storyboardName: StoryboardName.product)
		ProductsModuleConfigurator().configureModuleForViewInput(viewInput: viewController)
		return viewController
	}
}

extension ProductsRouter: HomeTabBarItemRouterProtocol {
	
	func configureModule(title: String) -> UIViewController {
		let viewController: ProductsViewController = ProductsViewController.initFromNib(storyboardName: StoryboardName.product)
		ProductsModuleConfigurator().configureModuleForViewInput(viewInput: viewController)
		viewController.customTitle = title
		let navigationController = UINavigationController(rootViewController: viewController)
		return navigationController
	}
}
