// 
//  DataEmployeeProtocol.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

protocol DataEmployeeProtocol {
   
    func getValueInDataEmployee(item: Int) -> String
    var amountOfEmployee: Int { get }
    func getValueOfProfession(item: Int) -> String
   
    
}
