//
//  hireMinerTableViewCell.swift
//  TapGame
//
//  Created by Madeline Eckhart on 7/2/20.
//  Copyright © 2020 MaddGaming. All rights reserved.
//

import UIKit

class hireMinerTableViewCell: UITableViewCell {

    @IBOutlet weak var hireMinerLabel: UILabel!
    @IBOutlet weak var hireMinerButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // format button
        hireMinerButton.layer.cornerRadius = 10
        hireMinerButton.layer.borderWidth = 4
        hireMinerButton.layer.borderColor = UIColor.MineColors.grey.cgColor
        hireMinerButton.backgroundColor = UIColor.MineColors.gold
        hireMinerButton.setTitle("5", for: .normal)
        hireMinerButton.setTitleColor(UIColor.MineColors.black, for: .normal)
        
        // format gem icon
        let gemImage = UIImage(named: "gem")
        hireMinerButton.tintColor = .black
        hireMinerButton.setImage(gemImage, for: .normal)
        hireMinerButton.imageEdgeInsets = UIEdgeInsets(top: 5, left: -10, bottom: 5, right: 0)
    }

}
