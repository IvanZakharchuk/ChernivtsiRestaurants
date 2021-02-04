//
//  ReviewViewController.swift
//  Chernivtsi Restaurants
//
//  Created by Іван Захарчук on 14.10.2019.
//  Copyright © 2019 Іван Захарчук. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    @IBOutlet var closeButton: UIButton!
    
    var restaurant: RestaurantMO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let restaurantImage = restaurant.image {
            backgroundImageView.image = UIImage(data: restaurantImage as Data)
        }
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 15.0, y: 15.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        
        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        
        // Solution to Exercise #1
        let moveUpTransform = CGAffineTransform.init(translationX: 0, y: -800)
        closeButton.transform = moveUpTransform
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
                for index in 0...rateButtons.count - 1 {
            UIView.animate(withDuration: 0.27, // 0,4 official
                delay: 0.1 + 0.15 * Double(index),
                options: [],
                animations: {
                    self.rateButtons[index].alpha = 1.0
                    self.rateButtons[index].transform = .identity
            }, completion: nil)
        }

        UIView.animate(withDuration: 0.3,
                       delay: 0.5,
                       options: [],
                       animations: {
                        self.closeButton.transform = .identity
        }, completion: nil)
    }
}
