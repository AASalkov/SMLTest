//
//  RecycleSettingsInteractor.swift
//  SMLTest
//
//  Created by Alexander Salkov on 06.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleSettingsInteractor: RecycleSettingsInteractorProtocol {
    
    var recycleDataManeger : RecycleDataManager!
    
    func saveDataForSettings(position : Int, gradient: Double) {

        recycleDataManeger.setValueButtonPositionFor(position, gradient)

    }

    func addLogInfo(position : Int, gradient: Double) {
        recycleDataManeger.addLogInfo(position, gradient: gradient)
    }
    
    func getKeyAndValueForIndex(index: Int) -> (key: Int, value: Double) {
        return recycleDataManeger.getKeyAndValueForIndex(index)
    }
    
    func getCountLogItems() -> Int {
        return recycleDataManeger.getCountLogItems()
    }

}