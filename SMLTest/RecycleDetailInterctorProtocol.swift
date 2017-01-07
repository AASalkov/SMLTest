//
//  RecycleDetailInterctorProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 05.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

protocol RecycleDetailInteractorProtocol {
    
    func saveCurrentIndex(index: Int)
    func getLabelTitle() -> String
    func getButtonGradient(position: Int) -> Double

}