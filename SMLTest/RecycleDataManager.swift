//
//  RecycleDataManager.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class RecycleDataManager {
    
    static var sharedInstance = RecycleDataManager()

    private var recycle = RecycleModel.sharedInstance
    private var log = LogModel.sharedInstance
    
    // fetch count value for RecycleView
    func getCountRecycleItems() -> Int {
        return recycle.countItems
    }
    
    // get value for RecycleView
    func getValueRecycleItems(position: Int) -> Double {
        return recycle.buttonGradientPosition[position]
    }
    
    // Set newValue for gradient on button
    func setValueButtonPositionFor(position: Int, _ value: Double) {
        recycle.buttonGradientPosition[position] = value
    }
    
    func addLogInfo(position: Int, gradient: Double) {
        log.addLog(position, value: gradient)
    }
    
    func getKeyAndValueForIndex(index: Int) -> (key: Int, value: Double) {
        return log.log[index]
    }
    
    func getCountLogItems() -> Int {
        return log.log.count
    }

}