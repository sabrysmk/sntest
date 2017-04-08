//
//  Fancybtn.swift
//  socialnetwork
//
//  Created by Александр Сабри on 08.04.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit

class Fancybtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 5.0
        
    }
}
