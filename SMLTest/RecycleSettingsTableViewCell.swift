//
//  RecycleSettingsTableViewCell.swift
//  SMLTest
//
//  Created by Alexander Salkov on 07.01.17.
//  Copyright © 2017 Alexander Salkov. All rights reserved.
//

import UIKit

class RecycleSettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var buttonCell: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
