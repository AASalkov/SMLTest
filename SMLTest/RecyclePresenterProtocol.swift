//
//  RecyclePresenterProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

protocol RecyclePresenterProtocol {
    
    func getCountRecycleItems() -> Int
    
    func getValueRecycleItems(position: Int) -> Double
    
    func goToDetailScreen()
    
    func goToSettingsScene()
    
    func sendDataForDetail(segue: UIStoryboardSegue)
    
}