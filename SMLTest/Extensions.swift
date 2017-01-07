//
//  Extensions.swift
//  SMLTest
//
//  Created by Alexander Salkov on 05.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setGradient(position : Double) {
    
        let gradient = CAGradientLayer()
        
        gradient.frame = self.bounds
        gradient.colors = [UIColor.greenColor().CGColor, UIColor.greenColor().CGColor, UIColor.blackColor().CGColor, UIColor.blackColor().CGColor]
        gradient.locations = [0.0, position, position, 1.0]
        gradient.startPoint = CGPointMake(0, CGFloat(position))
        gradient.endPoint = CGPointMake(1, CGFloat(position))
     
        self.layer.insertSublayer(gradient, atIndex: 0)
    
    }
}