//
//  BrewingMethod.swift
//  Coffee-Helper
//
//  Created by Nate Fuller on 6/14/21.
//

import Foundation

struct BrewingMethod: Hashable {
    static let CoffeeMaker = BrewingMethod(name: "Coffee Maker",
                                      ratio: .CoffeeMaker)
    static let FrenchPress = BrewingMethod(name: "French Press",
                                      ratio: .FrenchPress)
    static let PourOverDrip = BrewingMethod(name: "Pour Over Drip",
                                       ratio: .PourOverDrip)
    static let allMethods = [CoffeeMaker, FrenchPress, PourOverDrip]
    
    var iconURL: URL?
    var name: String
    var ratio: CoffeeToWaterRatio
}
