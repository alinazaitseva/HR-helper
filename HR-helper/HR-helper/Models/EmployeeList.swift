// 
//  EmployeeList.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class EmployeeList: DataEmployeeProtocol {
    
    var listOfProtocol: [String] {
        return ["Petro Pidkova", "Ivan Salo", "Jack Sparrow", "Tony Stark", "Pinocchio"]
    }
    
    func getValueInData(item: Int) -> String {
        return listOfProtocol[item]
    }
    
    func getAmountOfData() -> Int {
        return listOfProtocol.count
    }
    
}
