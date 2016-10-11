//
//  Meal.swift
//  FoodTracker
//
//  Created by Philip Ha on 2016-10-10.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: PROPERTIES
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: INITIALIZATION
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
