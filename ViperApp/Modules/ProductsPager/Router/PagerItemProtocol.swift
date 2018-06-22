//
//  PagerItemProtocol.swift
//  ViperApp
//
//  Created by Apple on 22.06.2018.
//  Copyright © 2018 it's muffin time. All rights reserved.
//

import Foundation
import UIKit

protocol PagerItemProtocol {
    var delegate: ProductsPagerRouterInput? {get set}
    func configureModule(delegate: ProductsPagerRouterInput, itemType: ProductType) -> UIViewController
}
