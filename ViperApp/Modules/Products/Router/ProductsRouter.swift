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
}

extension ProductsRouter: HomeTabBarItemRouterProtocol {
	
	func configureModule(title: String) -> UIViewController {
		let viewController: ProductsViewController = ProductsViewController.initFromNib(storyboardName: StoryboardName.product)
        ProductsModuleConfigurator().configure(for: viewController, with: self)
        
		viewController.customTitle = title
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: TabBarItemType.one.rawValue)
		let navigationController = UINavigationController(rootViewController: viewController)
		return navigationController
	}
}
