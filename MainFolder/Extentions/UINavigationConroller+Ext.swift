//
//  UINavigationConroller+Ext.swift
//  Simple Table for Dron
//
//  Created by Іван Захарчук on 7/12/19.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController
    }
    
}

