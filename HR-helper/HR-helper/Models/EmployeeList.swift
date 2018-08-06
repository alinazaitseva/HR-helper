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
    var dateOfBirth: Date?
    var image: UIImage?
    
    init(name: String, position: String, dateOfBirth: Date?, image: UIImage? ) {
        self.name = name
        self.position = position
        self.dateOfBirth = dateOfBirth
        self.image = image
    }
}

class EmployeeList {
    
    var listOfEmployee: [String] = ["Petro Pidkova", "Ivan Salo", "Jack Sparrow", "Tony Stark", "Pinocchio"]
    
    var listOfProfession: [String] = ["Sale Manager", "CEO", "Captain", "Iron Man", "Puppet"]
    
    var employees: [EmployeeEntity] = [
        EmployeeEntity(name: "Petro Pidkova", position: "Sale Manager", dateOfBirth: Date(), image:#imageLiteral(resourceName: "bat-face") ),
        EmployeeEntity(name: "Ivan Salo", position: "CEO", dateOfBirth: Date(), image: #imageLiteral(resourceName: "Webp.net-resizeimage (1)")),
        EmployeeEntity(name: "Jack Sparrow", position: "Captain", dateOfBirth: Date(), image: #imageLiteral(resourceName: "bat-face")),
        EmployeeEntity(name: "Tony Stark", position: "Iron Man", dateOfBirth: Date(), image: #imageLiteral(resourceName: "Webp.net-resizeimage (1)"))]
    
    var amountOfEmployee: Int {
        return employees.count
    }
    
    func getEmployee(index: Int) -> EmployeeEntity {
        return employees[index]
    }
    
    func addEmployee (_ employee: EmployeeEntity) {
        employees.append(employee)
    }
    
    func deleteEmployee(_ index: Int) {
        employees.remove(at: index)
    }
    
}
