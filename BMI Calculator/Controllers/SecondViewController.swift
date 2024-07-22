//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Isabela Da Silva Cardoso on 01/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect.init(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    
}
