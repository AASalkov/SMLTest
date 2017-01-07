//
//  RecycleInteractor.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleInteractor: RecycleInteractorProtocol{
    
    var recycleDataManeger : RecycleDataManager!
    
    func getCountRecycleItems() -> Int {
        return recycleDataManeger.getCountRecycleItems()
    }
    
    func getValueRecycleItems(position: Int) -> Double {
        return recycleDataManeger.getValueRecycleItems(position)
    }
    
}