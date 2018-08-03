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
    
    func numberOfSections(in _: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath.row)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//        let selectedEntity = SlotTableViewCell(title: employeeList.getValueInData(item: indexPath.row), description: employeeList.getValueInData)
//        
//        detailViewController.dataCell = selectedEntity
//        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func setUpUIColor(color: UIColor, for tableView: UITableView) {
        tableView.separatorColor = color
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
