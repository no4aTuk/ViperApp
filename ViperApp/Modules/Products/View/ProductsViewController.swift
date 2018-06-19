//
//  ProductsProductsViewController.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, ProductsViewInput {

    var output: ProductsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: ProductsViewInput
    func setupInitialState() {
    }
}
