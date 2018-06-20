//
//  ProfileProfileConfigurator.swift
//  ViperApp
//
//  Created by Nikolay on 20/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProfileModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? ProfileViewController {
            let profileRouter = ProfileRouter()
            configure(for: viewController, with: profileRouter)
        }
    }
    
    func configure(for viewController: ProfileViewController, with router: ProfileRouter) {
        
        let presenter = ProfilePresenter()
        presenter.view = viewController
        presenter.router = router
        
        let interactor = ProfileInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
    }
}
