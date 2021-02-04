//
//  RoundedTextfield.swift
//  Chernivtsi Restaurants
//
//  Created by Іван Захарчук on 14.10.2019.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {
    
    let pading = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, pading)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, pading)

    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, pading)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
    }
}
