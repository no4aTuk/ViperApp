//
//  ProductsProductsPresenter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

class ProductsPresenter: ProductsModuleInput, ProductsViewOutput, ProductsInteractorOutput {

    weak var view: ProductsViewInput!
    var interactor: ProductsInteractorInput!
    var router: ProductsRouterInput!

    func viewIsReady() {

    }
}
