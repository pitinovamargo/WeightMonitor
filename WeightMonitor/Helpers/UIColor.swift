//
//  UIColor.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 18.01.2024.
//

import UIKit

extension UIColor {
    static var black: UIColor { UIColor(named: "Text&elements primary") ?? UIColor.black}
    static var darkGray: UIColor { UIColor(named: "Text&elements teritary") ?? UIColor.darkGray }
    static var lightGray: UIColor { UIColor(named: "General Gray") ?? UIColor.lightGray }
    static var accentBlue: UIColor { UIColor(named: "AccentBlue") ?? UIColor.blue }
}
