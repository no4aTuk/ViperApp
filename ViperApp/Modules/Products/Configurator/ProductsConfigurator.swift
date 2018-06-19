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
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ProductsViewController) {

        let router = ProductsRouter()

        let presenter = ProductsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ProductsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
