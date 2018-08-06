// 
//  DetailViewController.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var avatarContainer: UIView!
    @IBOutlet weak var avatarDetail: UIImageView!
    @IBOutlet weak var nameEmployee: UILabel!
    @IBOutlet weak var dateOfBirthEmployee: UILabel!
    @IBOutlet weak var positionEmployee: UILabel!
    
    var employeeEntity: EmployeeEntity?
    var employeeList: EmployeeList!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let entity = employeeEntity else { return }
    }
    
    private func configureWith (entity: EmployeeEntity) {
        nameEmployee.text = entity.name
        positionEmployee.text = entity.position
        let date = DateManager(date: entity.dateOfBirth!, datePattern: .byDefault)
//        dateOfBirthEmployee.text.date.result
//         avatarDetail.image =
    }
    
}
