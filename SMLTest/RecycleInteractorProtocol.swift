//
//  RecycleInteractorProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

protocol RecycleInteractorProtocol {
    
    func getCountRecycleItems() -> Int
    
    func getValueRecycleItems(position: Int) -> Double
    
}