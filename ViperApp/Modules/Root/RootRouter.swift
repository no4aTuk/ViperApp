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
		window.rootViewController = HomeRouter.configureModule()
	}
}
