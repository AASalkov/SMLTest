//
//  RecycleTableViewControllerProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

protocol RecycleTableViewControllerProtocol {
    
    func getCountRecycleItems() -> Int
    func getValueRecycleItems(position: Int) -> Double
}