//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Philip Ha on 2016-10-10.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    
    override func layoutSubviews() {
        
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        
        // Offset each button's origin by the length of the button plus spacing.
        
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + spacing))
            button.frame = buttonFrame
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init (coder: aDecoder)
        
        for _ in 0..<starCount {
            
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.yellow
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped), for:.touchUpInside)
            
            ratingButtons += [button]
            addSubview(button)
        }
        
    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(){
        
        print("Button Pressed!")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 240, height: 44)
    }
}





