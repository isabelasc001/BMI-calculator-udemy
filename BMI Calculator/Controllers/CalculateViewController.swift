//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
   
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightDisplayLabel: UILabel!
    
    @IBOutlet weak var weightDisplayLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        
        let senderHeightPrint = sender.value
        
        let heightText = (String(format:"%.2f", senderHeightPrint))
        heightDisplayLabel.text = ("\(heightText) m")
    }
    
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        
        let senderWeightPrint = sender.value
        
        let weightText = (String(format: "%.0f", senderWeightPrint))
        
        weightDisplayLabel.text = ("\(weightText) Kg")
        
    }
    
    @IBAction func calcutaleAction(_ sender: UIButton) {
        
        let selectedHeight = heightSlider.value
        let selectedWeight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: selectedHeight, weight: selectedWeight)
        self.performSegue(withIdentifier: "displayResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "displayResult" {
            let destinatonVC = segue.destination as! ResultViewController
            destinatonVC.bmiValue = calculatorBrain.getBMIValue()
            destinatonVC.feedbackText = calculatorBrain.getBMIfeedback()
            destinatonVC.backgroundColor = calculatorBrain.getBMIFeedbackColor()
            
        }
    }
}

