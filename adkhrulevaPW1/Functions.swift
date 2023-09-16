//
//  Functions.swift
//  adkhrulevaPW1
//
//  Created by Aleksa Khruleva on 09.09.2023.
//

import Foundation
import UIKit

func getUniqueColors(amount: Int) -> [UIColor] {
    var result: [UIColor] = []
    
    var uniqueColor: UIColor
    var isUnique: Bool
    
    for _ in (0..<amount) {
        repeat {
            let hexColor = getHexColor()
            uniqueColor = UIColor(hexColor: hexColor)
//            uniqueColor = UIColor.random() // another way to generate a random color
            isUnique = !result.contains(uniqueColor)
        } while (!isUnique)
        
        result.append(uniqueColor)
    }
    
    return result
}

func getUniqueRadiuses(amount: Int) -> [Double] {
    var result: [Double] = []
    
    var uniqueRadius: Double
    var isUnique: Bool
    
    for _ in (0..<amount) {
        repeat {
            uniqueRadius = Double.random(in: 0...Constants.maxRadius)
            isUnique = !result.contains(uniqueRadius)
        } while (!isUnique)
        
        result.append(Double(uniqueRadius))
    }
    
    return result
}

func getHexColor() -> String {
    let red = Int.random(in: Constants.rgbColorRange)
    let green = Int.random(in: Constants.rgbColorRange)
    let blue = Int.random(in: Constants.rgbColorRange)
    
    let redHex = String(format: Constants.hexFormat, red)
    let greenHex = String(format: Constants.hexFormat, green)
    let blueHex = String(format: Constants.hexFormat, blue)
    
    let colorHex = Constants.hash + redHex + greenHex + blueHex
    
    return colorHex
}
