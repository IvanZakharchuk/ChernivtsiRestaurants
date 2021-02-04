//
//  UIColor+Ext.swift
//  Simple Table for Dron
//
//  Created by Іван Захарчук on 7/12/19.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init (red: Int, green: Int, blue: Int) {
        let redValue = CGFloat(red) / 255.0
        let greenValue = CGFloat(green) / 255.0
        let blueValue = CGFloat(blue) / 255.0
        
        self.init(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}
