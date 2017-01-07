//
//  RecycleModel.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleModel {
    
    let countItems = 100
    var buttonGradientPosition : [Double] = Array.init(count: 100, repeatedValue: 0.0)
    
    static let sharedInstance = RecycleModel()
        
}