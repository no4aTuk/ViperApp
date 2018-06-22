//
//  ProductsProductsPresenter.swift
//  ViperApp
//
//  Created by itsmuffintime on 19/06/2018.
//  Copyright © 2018 vonny.the.trash. All rights reserved.
//

class ProductsPresenter: ProductsModuleInput, ProductsViewOutput, ProductsInteractorOutput {

    //MARK: module properties
    weak var view: ProductsViewInput!
    var interactor: ProductsInteractorInput!
    var router: ProductsRouterInput!
    
    //MARK: properties
    public let productType: ProductType
    
    required init(productType: ProductType) {
        self.productType = productType
    }
    
    func viewIsReady() {
        view.setViewTitle(productType == .phones ? "Phones" : "Laptops")
    }
    
    func actionTapped() {
        router.switchToSibling()
    }
    
    func navigateToSettings() {
        router.navigateToSettingTab()
    }
}
