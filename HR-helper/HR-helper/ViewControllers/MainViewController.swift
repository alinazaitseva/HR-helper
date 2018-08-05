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
    @IBOutlet weak var searchBar: UISearchBar!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.getAmountOfEmployee()
    }
    
    @IBAction func addEmployee(_ sender: UIBarButtonItem) {
        guard let employeeVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EmployeeViewController") as? EmployeeViewController
        else { return }
        self.navigationController?.pushViewController(employeeVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SlotTableViewCell", for: indexPath) as? SlotTableViewCell {
            cell.slotLabel.text = employeeList.getValueInDataEmployee(item: indexPath.row)
            cell.professionLabel.text = employeeList.getValueOfProfession(item: indexPath.row)
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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        tableView.reloadData()
//        let selectedEntity = SlotTableViewCell(title: employeeList.getValueInData(item: indexPath.row), description: employeeList.getValueInData)
//        
//        detailViewController.dataCell = selectedEntity
//        navigationController?.pushViewController(detailViewController, animated: true)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self as? UISearchBarDelegate
        searchBar.resignFirstResponder()
    }
}


