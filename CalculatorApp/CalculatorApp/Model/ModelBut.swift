//
//  ModelBut.swift
//  CalculatorApp
//
//  Created by Mark Pashukevich on 7.08.24.
//

import SwiftUI
enum Operation{
    case addition, subtract, multiply, divide, none
}
enum Buttons: String{
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case minus = "-"
    case plus = "+"
    case equal = "="
    case divide = "/"
    case multiple = "x"
    case decimal = ","
    case percent = "%"
    case negative = "+/-"
    case clear = "AC"
    
    var buttonColor: Color{
        switch self{
        case .clear, .negative, .percent:
            return Color.grayCal
        case .divide, .multiple, .minus, .plus, .equal:
            return Color.orangeCal
        default:
            return Color.darkGrayCal
       
        }
    }
    
    
    var buttonFonColor: Color{
        switch self{
        case .clear, .negative, .percent:
            return Color.black
        default:
            return Color.white
       
        }
    }
}
