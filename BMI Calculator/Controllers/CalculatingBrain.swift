//
//  CalculatingBrain.swift
//  BMI Calculator
//
//  Created by Yegor Kozlovskiy on 23.07.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight / (pow(height, 2))
        print(bmi!)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.2f", bmi ?? "0.0") //NIL coalescing Operator
    }
    
}
