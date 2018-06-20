//
//  RootRouter.swift
//  ViperApp
//
//  Created by it's muffin time on 19/06/2018.
//  Copyright © 2018 it's muffin time. All rights reserved.
//

import Foundation
import UIKit

class RootRouter: RootRouterProtocol {
	func presentHomeTabBarViewController(in window: UIWindow) {
		window.makeKeyAndVisible()
        let vc1Router = ProductsRouter()
        let vc2Router = SettingsRouter()
        let vc3Router = ProfileRouter()
        
        let homeRouter = HomeRouter(childRouters: [vc1Router, vc2Router, vc3Router])
		window.rootViewController = homeRouter.configureModule()
	}
}
