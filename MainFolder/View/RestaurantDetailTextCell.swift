//
//  RestaurantDetailTextCell.swift
//  Chernivtsi Restaurants
//
//  Created by Іван Захарчук on 7/10/19.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

class RestaurantDetailTextCell: UITableViewCell {
    

    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 0
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
