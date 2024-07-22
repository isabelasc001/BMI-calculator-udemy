//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Isabela Da Silva Cardoso on 01/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var backgroundColor: UIColor?
    var feedbackText: String?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    @IBOutlet weak var backgroundScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValueLabel.text = bmiValue
        feedbackLabel.text = feedbackText
        backgroundScreen.backgroundColor = backgroundColor
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
