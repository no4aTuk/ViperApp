//
//  ProductsProductsViewInput.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

protocol ProductsViewInput: class {

    func setupInitialState()
    
    /// oh shit method
    ///
    /// - Parameter title: main title for list
    func setViewTitle(_ title: String)
}
