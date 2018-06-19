//
//  HomeHomeConfigurator.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class HomeModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? HomeViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: HomeViewController) {
		
		
		let childTabbarItems = [ProductsRouter(), ProductsRouter(), ProductsRouter()]

        let router = HomeRouter(childRouters: [])

        let presenter = HomePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = HomeInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
		
		router.viewController = viewController
		
		//setup child tab items
		var controllers: [UIViewController] = []
		for i in 0..<childTabbarItems.count {
			let childVC = ProductsRouter().configureModule(title: "Hello Products View Controller \(i)")
			childVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: i)
			controllers.append(childVC)
		}
		viewController.viewControllers = controllers
    }

}
