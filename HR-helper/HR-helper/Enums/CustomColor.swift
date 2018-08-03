// 
//  CustomColor.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation
import UIKit

enum CustomColor {
    case cyanCustom
    case grayCustom
    case greenCustom
    case redCustom
    case yellowCustom
    
    var color: UIColor {
        switch self {
        case .cyanCustom:
            return UIColor(red: 59.0 / 255.0, green: 194.0 / 255.0, blue: 215.0 / 255.0, alpha: 1.0)
        case .grayCustom:
            return UIColor(red: 242.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, alpha: 1.0)
        case .greenCustom:
            return UIColor(red: 163.0 / 255.0, green: 198.0 / 255.0, blue: 68.0 / 255.0, alpha: 1.0)
        case .redCustom:
            return UIColor(red: 204.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        case .yellowCustom:
            return UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        }
        
    }
}
