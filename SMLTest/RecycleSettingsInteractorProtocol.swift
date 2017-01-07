//
//  RecycleSettingsInteractorProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 06.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

protocol RecycleSettingsInteractorProtocol {
    
    func saveDataForSettings(position : Int, gradient: Double)
    func addLogInfo(position : Int, gradient: Double)
    func getKeyAndValueForIndex(index: Int) -> (key: Int, value: Double)
    func getCountLogItems() -> Int
    
}