//
//  LogModel.swift
//  SMLTest
//
//  Created by Alexander Salkov on 07.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import Foundation

class LogModel {
    static let sharedInstance = LogModel()
    
    var log : [(Int, Double)] = [(Int, Double)]()
    
    //let sortLog = LogModel.sharedInstance.log.filter{$0 > 0}
    
    func addLog(key: Int, value: Double) {
        log.append(key, value)
    }
}