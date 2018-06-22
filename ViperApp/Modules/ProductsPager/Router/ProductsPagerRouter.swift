//
//  ProductsPagerRouter.swift
//  ViperApp
//
//  Created by Apple on 22.06.2018.
//  Copyright © 2018 it's muffin time. All rights reserved.
//

import Foundation
import UIKit

class ProductsPagerRouter: ProductsPagerRouterInput, HomeTabBarItemRouterProtocol {
    var delegate: HomeRouterDelegate?
    
    weak var pagerViewController: ProductsPagerViewController?
    
    func navigate() {
        delegate?.navigate(to: .settings)
    }
    
    func switchToNexSibling() {
        pagerViewController?.goToNextPage(animated: true)
    }
    
    func navigateToSettingsTab() {
        delegate?.navigate(to: .settings)
    }
    
    func configureModule(delegate: HomeRouterDelegate?) -> UIViewController {
        let controller: ProductsPagerViewController = ProductsPagerViewController.initFromNib(storyboardName: StoryboardName.product)
        
        self.pagerViewController = controller
        
        //setup child controllers
        var childControllers: [UIViewController] = []
        childControllers.append(ProductsRouter().configureModule(delegate: self, itemType: .phones))
        childControllers.append(ProductsRouter().configureModule(delegate: self, itemType: .laptops))
        
        pagerViewController?.pages = childControllers
        
        controller.tabBarItem = UITabBarItem(title: "Products", image: #imageLiteral(resourceName: "ic_clock"), selectedImage: #imageLiteral(resourceName: "ic_clock_selected"))
        let navigationController = UINavigationController(rootViewController: controller)
        
        return navigationController
    }
}
