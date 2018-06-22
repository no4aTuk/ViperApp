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
    var delegate: ProductsPagerRouterInput? {
        didSet {
            print("Set Product router delegate: ", delegate)
        }
    }
    
    init() {
        print("Init product router")
    }
    
    func switchToSibling() {
        delegate?.switchToNexSibling()
    }
    
    func navigateToSettingTab() {
        delegate?.navigateToSettingsTab()
    }
}

extension ProductsRouter: PagerItemProtocol {
	
    func configureModule(delegate: ProductsPagerRouterInput, itemType: ProductType) -> UIViewController {
		let viewController: ProductsViewController = ProductsViewController.initFromNib(storyboardName: StoryboardName.product)
        self.viewController = viewController
        self.delegate = delegate
        ProductsModuleConfigurator().configure(for: viewController, with: self, and: itemType)
    
		return viewController
	}
}
