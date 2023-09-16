//
//  UIColorExtension.swift
//  adkhrulevaPW1
//
//  Created by Aleksa Khruleva on 09.09.2023.
//

import Foundation
import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            displayP3Red: .random(in: Constants.colorRange),
            green: .random(in: Constants.colorRange),
            blue: .random(in: Constants.colorRange),
            alpha: Constants.opacity
        )
    }
    convenience init(hexColor: String) {
        let newHexColor = hexColor.replacingOccurrences(of: Constants.hash, with: "")
        
        let red = CGFloat(Double((Int(
            newHexColor.prefix(Constants.colorLength),
            radix: Constants.hexSystem) ?? 0)) / Double(Constants.maxRGB)
        )
        let green = CGFloat(Double((Int(
            newHexColor.dropFirst(Constants.colorLength).prefix(Constants.colorLength),
            radix: Constants.hexSystem) ?? 0)) / Double(Constants.maxRGB)
        )
        let blue = CGFloat(Double((Int(
            newHexColor.dropFirst(Constants.colorLength + Constants.colorLength).prefix(Constants.colorLength),
            radix: Constants.hexSystem) ?? 0)) / Double(Constants.maxRGB)
        )
        
        self.init(red: red, green: green, blue: blue, alpha: Constants.opacity)
        return
    }
}
