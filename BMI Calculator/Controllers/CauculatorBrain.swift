//
//  CauculatorBrain.swift
//  BMI Calculator
//
//  Created by Pedro Naves on 28/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
   
    mutating func calculateBMI(height: Float, weigth: Float) {
        let bmiValue = weigth / powf(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, adivice: "Eat more pies", color: .blue)
        } else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, adivice: "You ar normal", color: .green)
        } else {
            bmi = BMI(value: bmiValue, adivice: "Eat less pies", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiFormated = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormated
    }
    
    func getAdvice() -> String {
        return bmi?.adivice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .brown
    }
}

