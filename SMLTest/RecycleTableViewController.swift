//
//  RecycleTableViewController.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleTableViewController: UITableViewController, RecycleTableViewControllerProtocol {

    var presenter : RecyclePresenterProtocol!
    
    @IBOutlet weak var labelNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RecycleAssembly.sharedInstance.build(self)
    }
    
    func goToSettingsScene() {
        self.presenter.goToSettingsScene()
        
    }
    
    func refreshDataSet() {
        self.tableView.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.refreshDataSet), name: "refresh", object: nil)
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let button =  UIButton(type: .Custom)
        button.frame = CGRectMake(0, 0, 100, 40) as CGRect
        button.setTitle("Settings", forState: UIControlState.Normal)
        button.setTitleColor(self.navigationController?.navigationBar.tintColor, forState: .Normal)
        button.addTarget(self, action: #selector(self.goToSettingsScene), forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.titleView = button
        
        
        /* TODO: Разобраться почему не отрабатывает нажатие через рекогнайзер
        let navTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        self.navigationItem.titleView?.userInteractionEnabled = true
        self.navigationItem.titleView?.addGestureRecognizer(navTapGesture)
        */
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return getCountRecycleItems()
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("RecycleCell", forIndexPath: indexPath) as! RecycleTableViewCell
        cell.labelNumber?.text = String(indexPath.row)
        
        let positionGradient = getValueRecycleItems(indexPath.row)
        
        if (positionGradient > 0.0 && positionGradient <= 1.0) {
            cell.buttonNumber.setGradient(positionGradient)
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.presenter.goToDetailScreen()
    }
 
    func getCountRecycleItems() -> Int {
        return presenter.getCountRecycleItems()
    }
    
    func getValueRecycleItems(position: Int) -> Double {
        return presenter.getValueRecycleItems(position)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showRecycleDetail") {
            presenter.sendDataForDetail(segue)
        }
    }
    
}
