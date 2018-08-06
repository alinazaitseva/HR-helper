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
    
    var employeeList: EmployeeList?
    var selectedEmployee: EmployeeEntity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameEmployee.text = selectedEmployee?.name
        positionEmployee.text = selectedEmployee?.position
        if selectedEmployee?.image != nil {
            avatarDetail.image = selectedEmployee?.image
        }
        if selectedEmployee?.dateOfBirth != nil {
            dateOfBirthEmployee.text = selectedEmployee?.dateOfBirth?.description
        }
    }
}
