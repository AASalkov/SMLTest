//
//  RecycleSettingsViewController.swift
//  SMLTest
//
//  Created by Alexander Salkov on 06.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleSettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, RecycleSettingsViewControllerProtocol {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rowTextField: UITextField!
    @IBOutlet weak var gradientTextField: UITextField!
    
    @IBAction func touchOnButton(sender: AnyObject) {
        
        if let rowString = self.rowTextField.text {
            if let gradientString = self.gradientTextField.text {
                
                let row = Int(rowString)!
                let gradient = Double(gradientString)!
                self.presenter.saveDataForSettings(row, gradient: gradient)
                
                self.presenter.addLogInfo(row, gradient: gradient)
                
                // For update master TableView
                NSNotificationCenter.defaultCenter().postNotificationName("refresh", object: nil, userInfo: nil)
                NSNotificationCenter.defaultCenter().postNotificationName("refresh_log", object: nil, userInfo: nil)
            }
        }
    }

    var presenter : RecycleSettingsPresenterProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RecycleSettingsAssembly.sharedInstance.build(self)
    }
    
    func refreshDataSet() {
    
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.refreshDataSet), name: "refresh_log", object: nil)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getCountLogItems()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as! RecycleSettingsTableViewCell
        
        let (labelText, buttonGradient) = self.presenter.getKeyAndValueForIndex(indexPath.row)
        
        cell.labelCell?.text = String(labelText)
        
        if (buttonGradient > 0.0 && buttonGradient <= 1.0) {
            cell.buttonCell?.setGradient(buttonGradient)
        }
        
        return cell
    }
    
    
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
