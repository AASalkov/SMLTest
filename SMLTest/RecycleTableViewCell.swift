//
//  RecycleTableViewCell.swift
//  SMLTest
//
//  Created by Alexander Salkov on 03.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var buttonNumber: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
