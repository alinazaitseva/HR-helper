// 
//  EmployeeList.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class EmployeeList: DataEmployeeProtocol {
    
    var listOfEmployee: [String] {
        return ["Petro Pidkova", "Ivan Salo", "Jack Sparrow", "Tony Stark", "Pinocchio"]
    }
    
    var listOfProfession: [String] {
        return ["Sale Manager", "CEO", "Captain", "Iron Man", "Puppet"]
    }
    
    func getValueInDataEmployee(item: Int) -> String {
        return listOfEmployee[item]
    }
    
    func getAmountOfEmployee() -> Int {
        return listOfEmployee.count
    }
    
    func getValueOfProfession(item: Int) -> String {
        return listOfProfession[item]
    }
    
    func getAmountOfProfession() -> Int {
        return listOfProfession.count
    }
    
}
