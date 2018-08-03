//
//  ViewController.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/2/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UIView!
    let employeeList = EmployeeList()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.getAmountOfData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SlotTableViewCell", for: indexPath) as? SlotTableViewCell {
            cell.slotLabel.text = employeeList.getValueInData(item: indexPath.row)
            return cell
        } else {
            return tableView.dequeueReusableCell(withIdentifier: "SlotTableViewCell", for: indexPath)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

