//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shaik Ismail on 19/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func returnAdvice()->String
    {
        bmi?.advice ?? "no advice"
    }
    func returnColor()->UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi=BMI(advice: "eat more pies", color: UIColor.blue, value: bmiValue)
        } else if bmiValue < 24.9 {
            bmi=BMI(advice: "fit as fiddle", color: UIColor.green, value: bmiValue)
        } else {
            bmi=BMI(advice: "eat less pies", color: UIColor.red, value: bmiValue)
        }
    }
}
