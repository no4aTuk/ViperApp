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

        let router = HomeRouter()

        let presenter = HomePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = HomeInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
