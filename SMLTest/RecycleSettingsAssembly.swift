//
//  RecycleSettingsAssembly.swift
//  SMLTest
//
//  Created by Alexander Salkov on 06.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleSettingsAssembly {
 
    static let sharedInstance = RecycleSettingsAssembly()
    
    func build(tableView: RecycleSettingsViewController) {
        
        let presentor = RecycleSettingsPresenter()
        let interactor = RecycleSettingsInteractor()
        let recycleDataManager = RecycleDataManager.sharedInstance
        tableView.presenter = presentor
        presentor.interactor = interactor
        interactor.recycleDataManeger = recycleDataManager
        
    }
}