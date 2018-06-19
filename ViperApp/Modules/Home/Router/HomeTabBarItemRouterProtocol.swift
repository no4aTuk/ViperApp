//
//  HomeTabBarItemProtocol.swift
//  ViperApp
//
//  Created by it's muffin time on 20/06/2018.
//  Copyright © 2018 it's muffin time. All rights reserved.
//

import Foundation
import UIKit

protocol HomeTabBarItemRouterProtocol {
	var delegate: HomeRouterDelegate? {get set}
	
	func configureModule(title: String) -> UIViewController
}
