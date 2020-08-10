//
//  CalculatingBrain.swift
//  BMI Calculator
//
//  Created by Yegor Kozlovskiy on 23.07.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Bmi?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        
        if 18.5 > bmiValue {
            bmi = Bmi(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if 18.5...24.9 ~= bmiValue {
            bmi = Bmi(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if 24.9 < bmiValue{
            bmi = Bmi(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    
    func getBmiValue() -> String {
        return String(format: "%.2f", bmi?.value ?? "0.0") //NIL coalescing Operator
    }
    
}
