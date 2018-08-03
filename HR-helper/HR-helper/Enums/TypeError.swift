// 
//  TypeError.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

enum TypeError: Error {
    case dataIsAbsent
    case invalidImage
    
    var localizedDescription: String {
        switch self {
        case .dataIsAbsent:
            return "Data doesn't exists"
        case .invalidImage:
            return "Invalid image"
        }
    }
}
