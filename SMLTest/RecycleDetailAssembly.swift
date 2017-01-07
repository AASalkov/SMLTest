//
//  RecycleDetailAssembly.swift
//  SMLTest
//
//  Created by Alexander Salkov on 05.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleDetailAssembly {

    static let sharedInstance = RecycleDetailAssembly()
    
    func build(view: RecycleDetailViewController) {
        
        let recycleDataManager = RecycleDataManager.sharedInstance
        let interactor = RecycleDetailInterctor()
        let presenter = RecycleDetailPresenter()
        view.presenter = presenter
        presenter.interactor = interactor
        interactor.recycleDataManeger = recycleDataManager
        
    }

}