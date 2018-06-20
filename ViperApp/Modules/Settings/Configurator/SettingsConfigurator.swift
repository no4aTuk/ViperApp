//
//  SettingsSettingsConfigurator.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class SettingsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? SettingsViewController {
            let settingsRouter = SettingsRouter()
            configure(for: viewController, with: settingsRouter)
        }
    }
    
    func configure(for viewController: SettingsViewController, with router: SettingsRouter) {
        
        let presenter = SettingsPresenter()
        presenter.view = viewController
        presenter.router = router
        
        let interactor = SettingsInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
    }
}
