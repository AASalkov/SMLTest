//
//  RecycleDetailInteractor.swift
//  SMLTest
//
//  Created by Alexander Salkov on 05.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleDetailInterctor: RecycleDetailInteractorProtocol {

    var recycleDataManeger : RecycleDataManager!
    
    var currentIndex = 0
    
    func saveCurrentIndex(index: Int) {
        self.currentIndex = index
    }
    
    func getLabelTitle() -> String {
        return String(self.currentIndex)
    }
    
    func getButtonGradient(position: Int) -> Double {
        return recycleDataManeger.getValueRecycleItems(position)
    }

}
