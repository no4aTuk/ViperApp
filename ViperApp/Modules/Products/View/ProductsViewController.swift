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
	var customTitle: String = ""
	
	@IBOutlet weak var titleLabel: UILabel!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
		setupInitialState()
    }


    // MARK: ProductsViewInput
    func setupInitialState() {
		titleLabel.text = customTitle
        self.navigationItem.title = "Products"
    }
}

