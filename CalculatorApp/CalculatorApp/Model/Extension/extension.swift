//
//  extension.swift
//  CalculatorApp
//
//  Created by Mark Pashukevich on 7.08.24.
//

import SwiftUI
extension Color{
    static let grayCal = Color("grayCalc")
    static let darkGrayCal = Color("darkGrayCalc")
    static let orangeCal = Color("orangeCalc")
   
    
}

extension Buttons{
    
    func buttonToOPeration() -> Operation{
        switch self {
        case .plus:
            return .addition
        case .minus:
            return .subtract
        case .multiple:
            return .multiply
        case .divide:
            return .divide
        default:
            return .none
        }
    }
}
