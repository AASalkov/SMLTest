//
//  RecycleRoutingProtocol.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

protocol RecycleRoutingProtocol {
    
    func routeToDetail()
    func routeToSettings()
    func sendDataForDetail(segue: UIStoryboardSegue)
}