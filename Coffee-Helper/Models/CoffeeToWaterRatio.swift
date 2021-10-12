//
//  CoffeeToWaterRatio.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/14/21.
//

import Foundation

struct CoffeeToWaterRatio: Hashable {
    static let CoffeeMaker = Self(denominator: 15)
    static let FrenchPress = Self(denominator: 12)
    static let PourOverDrip = Self(denominator: 17)
    
    var denominator: Int
    var decimalValue: Float { Float(numerator) / Float(denominator) }
    var numerator: Int
    var stringValue: String { "\(numerator) : \(denominator)" }
    
    init(numerator: Int = 1, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
}
