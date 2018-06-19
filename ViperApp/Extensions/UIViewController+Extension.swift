//
//  UIViewController+Extension.swift
//  ViperApp
//
//  Created by it's muffin time on 19/06/2018.
//  Copyright © 2018 it's muffin time. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
	
	static var identifier: String {
		get {
			return String(describing: self)
		}
	}
	
	static func initFromNib<T: UIViewController>(storyboardName: StoryboardName, bundle: Bundle = Bundle.main) -> T {
		let storyBoard = UIStoryboard(name: storyboardName.rawValue, bundle: bundle)
		return storyBoard.instantiateViewController(withIdentifier: T.identifier) as! T
	}
}

