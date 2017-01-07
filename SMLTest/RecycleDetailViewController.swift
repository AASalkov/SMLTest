//
//  RecycleDetailViewController.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleDetailViewController: UIViewController, RecycleDetailViewControllerProtocol {
   
    @IBOutlet weak var buttonDetail: UIButton!
    @IBOutlet weak var labelDetail: UILabel!

    var presenter : RecycleDetailPresenterProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RecycleDetailAssembly.sharedInstance.build(self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelDetail?.text = presenter.getLabelTitle()
        
        let positionGradient = presenter.getButtonGradient(Int(presenter.getLabelTitle())!)
        if (positionGradient > 0.0 && positionGradient <= 1.0) {
            buttonDetail?.setGradient(positionGradient)
        }        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
