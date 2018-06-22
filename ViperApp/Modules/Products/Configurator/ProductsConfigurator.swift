//
//  ProductsProductsConfigurator.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProductsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ProductsViewController {
            let productsRouter = ProductsRouter()
            let productType = ProductType.phones
            configure(for: viewController, with: productsRouter, and: productType)
        }
    }

    func configure(for viewController: ProductsViewController, with router: ProductsRouter, and productType: ProductType) {

        let presenter = ProductsPresenter(productType: productType)
        presenter.view = viewController
        presenter.router = router

        let interactor = ProductsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
    }
}
