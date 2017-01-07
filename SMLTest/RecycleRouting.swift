//
//  RecycleRouting.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleRouting: RecycleRoutingProtocol {
    
    weak var tableViewController : RecycleTableViewController!
    //weak var viewController : RecycleSettingsViewController!
    
    //var presenter : RecyclePresenterProtocol!
    
    func routeToDetail() {
        tableViewController.performSegueWithIdentifier("showRecycleDetail", sender: nil)
    }
    
    func routeToSettings() {
        
        tableViewController.performSegueWithIdentifier("showSettings", sender: nil)
    }
    
    
    // send params for initial detail view controller
    func sendDataForDetail(segue: UIStoryboardSegue) {
        if (segue.identifier == "showRecycleDetail") {
            if let selectedRow = tableViewController.tableView.indexPathForSelectedRow?.row {
                let recycleDetailViewController = segue.destinationViewController as! RecycleDetailViewController
                
                // send save index for view detail
                recycleDetailViewController.presenter.saveCurrentIndex(selectedRow)
            }
        }
    }
    
    /*func saveDataForSettings(position: Int, gradient: Double) {
        tableViewController.presenter.saveDataForSettings(position, gradient: gradient)
    }
    
    
    func sendDataForSettings(segue: UIStoryboardSegue) {
        if (segue.identifier == "sendData") {
            let recycleSettingsViewController = segue.destinationViewController as! RecycleSettingsViewController
            
            
            //recycleSettingsViewController.presenter.
        }
    }
    */
    
}