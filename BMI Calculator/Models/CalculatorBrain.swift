//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Isabela Da Silva Cardoso on 04/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiCalculated: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let calculatingBMI = weight/pow(height, 2)
        
        if calculatingBMI < 18.5 {
            bmiCalculated = BMI(value: calculatingBMI, feedback: "Invest in a more complete meal plan", feedbackColor: UIColor.blue)
        } else if calculatingBMI >= 18.5 && calculatingBMI <= 24.9 {
            bmiCalculated = BMI(value: calculatingBMI, feedback: "Keep up the good work", feedbackColor: UIColor.orange)
        } else {
            bmiCalculated = BMI(value: calculatingBMI, feedback: "Go look for a professional's help", feedbackColor: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        if let bmiValue = bmiCalculated  {
           let finalValue = String(format:"%.1f", bmiValue.value)
            return finalValue
        } else {
            return "0.0"
        }
    }
    
    func getBMIfeedback() -> String {
        return bmiCalculated?.feedback ?? "No advice found"
    }
    
    func getBMIFeedbackColor() -> UIColor {
        return bmiCalculated?.feedbackColor ?? UIColor.white
    }
}
