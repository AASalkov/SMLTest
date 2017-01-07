//
//  RecycleAssembly.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleAssembly {
    
    static let sharedInstance = RecycleAssembly()
    
    func build(tableView: RecycleTableViewController) {
        let recycleDataManager = RecycleDataManager.sharedInstance
        let interactor = RecycleInteractor()
        let presenter = RecyclePresenter()
        let router = RecycleRouting()
        router.tableViewController = tableView
        presenter.router = router
        tableView.presenter = presenter
        presenter.interactor = interactor
        interactor.recycleDataManeger = recycleDataManager
    }
}