//
//  RestaurantTableViewCell.swift
//  Chernivtsi Restaurants
//
//  Created by Іван Захарчук on 6/12/19.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit


class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    {
        didSet {
            thumbnailImageView.layer.cornerRadius = 30
            thumbnailImageView.clipsToBounds = true
        }
    }
    
    @IBOutlet var heartImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
