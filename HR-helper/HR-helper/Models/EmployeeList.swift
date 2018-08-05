// 
//  EmployeeList.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation
import UIKit

class EmployeeEntity {
    var name: String
    var position: String
    var dateOfBirth: Date
    var image: UIImage
    
    init(name: String, position: String, dateOfBirth: Date, image: UIImage ) {
                self.name = name
                self.position = position
                self.dateOfBirth = dateOfBirth
                self.image = image
            }

    func setUniqName() {
        var new = ""
        if let lastCharacter = name.last, let number = Int(String(lastCharacter)) {
            let newNumber = number + 1
            new = String(newNumber)
        }
        name = name + new
    }
}

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
    
//    func addNewEmployee(_ employee: EmployeeEntity) {
//        var temporary = employee
//        if listOfEmployee.contains(employee) {
//            temporary.setUniqName()
//        }
//        listOfEmployee.insert(temporary)
//    }
//    
//    subscript(index: Int) -> EmployeeEntity {
//        let i = listOfEmployee.index(listOfEmployee.startIndex, offsetBy: index)
//        return listOfEmployee[i]
//    }
    
}
