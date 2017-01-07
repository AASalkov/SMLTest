//
//  RecycleSettingsPresenter.swift
//  SMLTest
//
//  Created by Alexander Salkov on 06.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleSettingsPresenter: RecycleSettingsPresenterProtocol {
 
    var interactor : RecycleSettingsInteractorProtocol!
    
    func saveDataForSettings(position : Int, gradient: Double) {
        self.interactor.saveDataForSettings(position, gradient: gradient)
    }
    
    func addLogInfo(position : Int, gradient: Double) {
        self.interactor.addLogInfo(position, gradient: gradient)
    }
    
    func getKeyAndValueForIndex(index: Int) -> (key: Int, value: Double) {
        return self.interactor.getKeyAndValueForIndex(index)
    }
    
    func getCountLogItems() -> Int {
        return self.interactor.getCountLogItems()
    }
}