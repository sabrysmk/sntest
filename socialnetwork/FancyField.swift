//
//  FancyField.swift
//  socialnetwork
//
//  Created by Александр Сабри on 08.04.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit

class FancyField: UITextField {

    override func awakeFromNib() {
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 5.0
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
        
    }
}
