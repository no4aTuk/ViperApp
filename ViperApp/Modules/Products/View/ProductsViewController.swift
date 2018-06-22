//
//  ProductsProductsViewController.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, ProductsViewInput {

    //MARK: properties
    var output: ProductsViewOutput!
	var customTitle: String = ""
    
    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
		setupInitialState()
    }

    
    //MARK: Actions
    @IBAction func someAction(_ sender: AnyObject) {
        //output.actionTapped()
    }

    // MARK: ProductsViewInput
    func setupInitialState() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func setViewTitle(_ title: String) {
        self.titleLabel.text = title
    }
}

