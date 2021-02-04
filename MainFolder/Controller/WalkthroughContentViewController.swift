//
//  WalkthroughContentViewController.swift
//  Chernivtsi Restaurants
//
//  Created by Іван Захарчук on 14.10.2019.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet var headingLLabel: UILabel! {
        didSet {
            headingLLabel.numberOfLines = 0
        }
    }
    @IBOutlet var subHHeadingLabel: UILabel! {
        didSet {
            subHHeadingLabel.numberOfLines = 0
        }
    }
    @IBOutlet var contentImageView: UIImageView!
    
    // MARK: - Properties
    
    var index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    
    // MARK: - View life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headingLLabel.text = heading
        subHHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
