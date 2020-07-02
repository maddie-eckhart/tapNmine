//
//  minerTableViewCell.swift
//  TapGame
//
//  Created by Madeline Eckhart on 7/1/20.
//  Copyright © 2020 MaddGaming. All rights reserved.
//

import UIKit

class minerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var levelUpLabel: UILabel!
    @IBOutlet weak var upgradeButton: UIButton!
    
    @IBAction func upgradeButtonTapped(_ sender: Any) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
