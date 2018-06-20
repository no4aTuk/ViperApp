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
    
    func navigate() {
        delegate?.navigate(to: .settings)
    }
}

extension ProductsRouter: HomeTabBarItemRouterProtocol {
	
    func configureModule(delegate: HomeRouterDelegate?) -> UIViewController {
		let viewController: ProductsViewController = ProductsViewController.initFromNib(storyboardName: StoryboardName.product)
        self.delegate = delegate
        ProductsModuleConfigurator().configure(for: viewController, with: self)
        
		viewController.customTitle = "Products"
        viewController.tabBarItem = UITabBarItem(title: "Products", image: #imageLiteral(resourceName: "ic_clock"), selectedImage: #imageLiteral(resourceName: "ic_clock_selected"))
		let navigationController = UINavigationController(rootViewController: viewController)
		return navigationController
	}
}
