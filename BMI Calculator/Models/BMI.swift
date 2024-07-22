//
//  BMI.swift
//  BMI Calculator
//
//  Created by Isabela Da Silva Cardoso on 06/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let feedback: String
    let  feedbackColor: UIColor
    
    init(value: Float, feedback: String, feedbackColor: UIColor) {
        self.value = value
        self.feedback = feedback
        self.feedbackColor = feedbackColor
    }
 
   
}
