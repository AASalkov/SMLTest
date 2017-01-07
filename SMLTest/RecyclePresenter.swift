//
//  RecuclePresenter.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecyclePresenter : RecyclePresenterProtocol {
    
    var interactor : RecycleInteractorProtocol!
    var router : RecycleRoutingProtocol!
    
    func getCountRecycleItems() -> Int {
        
        return interactor.getCountRecycleItems()
    
    }
    
    func getValueRecycleItems(position: Int) -> Double  {
        
        return interactor.getValueRecycleItems(position)
        
    }
    
    func goToDetailScreen() {
        self.router.routeToDetail()
    }
    
    func goToSettingsScene() {
        self.router.routeToSettings()
    }
    
    func sendDataForDetail(segue: UIStoryboardSegue) {
        self.router.sendDataForDetail(segue)
    }
}