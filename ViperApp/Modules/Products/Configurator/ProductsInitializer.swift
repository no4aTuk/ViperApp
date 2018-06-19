//
//  ProductsProductsInitializer.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProductsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var productsViewController: ProductsViewController!

    override func awakeFromNib() {

        let configurator = ProductsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: productsViewController)
    }

}
