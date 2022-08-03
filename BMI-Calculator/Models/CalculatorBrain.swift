//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Aleksey Ryabchenko on 03.08.2022.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let valueFormatBmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return valueFormatBmi
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "not advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Нужно больше кушать!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Все отлично, так держать!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Ой! Кажется пора отказаться от бабушкиных пирожков!", color: UIColor.red)
        }
    }
}
