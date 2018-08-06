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
    let employeeList = EmployeeList()
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.amountOfEmployee
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    @IBAction func addEmployee(_ sender: UIBarButtonItem) {
        guard let employeeVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EmployeeViewController") as? EmployeeViewController
        else { return }
        employeeVC.employeeList = employeeList
        self.navigationController?.pushViewController(employeeVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SlotTableViewCell", for: indexPath) as? SlotTableViewCell {
            let worker = employeeList.getEmployee(index: indexPath.row)
            cell.slotLabel.text = worker.name
            cell.professionLabel.text = worker.position
            if worker.image != nil {
              cell.imageLabel.image = worker.image
            }
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
        let selectedEmployee = employeeList.getEmployee(index: indexPath.row)
        detailViewController.selectedEmployee = selectedEmployee
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == UITableViewCellEditingStyle.delete {
//            dataSource.delete(dataSource[indexPath.row])
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self as? UISearchBarDelegate
        searchBar.resignFirstResponder()
    }
    
//    func filterContentForSearchText(_ searchText: String) {
//        filteredEmployees = fakeData.filter({( employee : EmployeeEntity) -> Bool in
//            return employee.name.lowercased().contains(searchText.lowercased())
//        })
//        if searchText.isEmpty {
//            employeesListTable?.filteredEmployees = nil
//        } else {
//            employeesListTable?.filteredEmployees = filteredEmployees
//        }
//        employeesListTable?.tableView.reloadData()
//    }
}

extension MainViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
//        self.filterContentForSearchText(searchController.searchBar.text!)
    }
}

extension MainViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        self.filterContentForSearchText(searchText)
    }
}

