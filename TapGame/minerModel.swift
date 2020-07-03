//
//  minerModel.swift
//  TapGame
//
//  Created by Madeline Eckhart on 7/1/20.
//  Copyright © 2020 MaddGaming. All rights reserved.
//

import UIKit

struct Miner {
    var image: UIImage
    var level: Int
    
    init(setImage: UIImage, setLevel: Int) {
        image = setImage
        level = setLevel
    }
}

extension UIColor {
  struct MineColors {
    static var sand: UIColor  { return UIColor(red: 176/255, green: 136/255, blue: 98/255, alpha: 1) }
    static var cream: UIColor { return UIColor(red: 221/255, green: 205/255, blue: 190/255, alpha: 1) }
    static var gold: UIColor  { return UIColor(red: 255/255, green: 186/255, blue: 43/255, alpha: 1) }
    static var grey: UIColor { return UIColor(red: 151/255, green: 141/255, blue: 130/255, alpha: 1) }
    static var black: UIColor { return UIColor(red: 22/255, green: 18/255, blue: 16/255, alpha: 1) }
  }
}
