//
//  RecycleDetailPresenter.swift
//  SMLTest
//
//  Created by Alexander Salkov on 05.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleDetailPresenter : RecycleDetailPresenterProtocol {
    
    var interactor : RecycleDetailInteractorProtocol!
    
    func saveCurrentIndex(index: Int) {
        
        interactor.saveCurrentIndex(index)
        
    }
    
    func getLabelTitle() -> String {
        return interactor.getLabelTitle()
    }

    func getButtonGradient(position: Int) -> Double {
        return interactor.getButtonGradient(position)
    }

    
}