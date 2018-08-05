// 
//  EmployeeViewController.swift
//  HR-helper
//
//  Created by Alina Zaitseva on 8/3/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import UIKit
import Photos

class EmployeeViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var avatarContainer: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var employeeName: String?
    var employeePosition: String?
    var dateEmployeePicker: Date?
    var employeeEntity: EmployeeEntity?
    
    @IBAction func datePickerPushed(_ sender: UIDatePicker) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self as? UITextFieldDelegate
        positionTextField.delegate = self as? UITextFieldDelegate
        
    }
    
    @IBAction func pushedTextField(_ sender: UITextField) {
        let text = sender.text
        
        if sender == nameTextField {
            employeeName = text
        } else if sender == positionTextField {
            employeePosition = text
        }
    }
    
    @IBAction func addPhotoTapped(_ sender: UIButton) {
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().tintColor = UIColor.black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        
        let photos = PHPhotoLibrary.authorizationStatus()
        if photos == .notDetermined {
            PHPhotoLibrary.requestAuthorization({ status in
                if status == .authorized {
                    self.presentImagePicker()
                } else {
                    self.showAlert(title: "Warning", message: TypeError.invalidImage.localizedDescription)
                }
            })
        } else if photos == .authorized {
            presentImagePicker()
        }
        
    }
    
    private func presentImagePicker() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    @IBAction func addNewEmployee(_ sender: UIBarButtonItem) {
        let dateEmployeePicker = self.dateEmployeePicker ?? datePicker.date
        if let imageUser = imageView.image {
            employeeEntity?.image = imageUser
        }
        var isTextFieldFull = true
        if employeeName == nil || (employeeName?.isEmpty)! {
            nameTextField.placeholder = "Please input name"
        }
        if employeePosition == nil || (employeePosition?.isEmpty)! {
            nameTextField.placeholder = "Please input position"
        }
        //        if isTextFieldFull {
        //            let newEmployee = EmployeeEntity (
        //                name: String,
        //                position: String,
        //                dateOfBirth: Date,
        //                image: UIImage)
        //        }
        
        self.navigationController?.popToRootViewController(animated: true)
        self.view.layoutIfNeeded()
    }
    
    
}

extension EmployeeViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        self.avatarContainer.backgroundColor = .clear
        self.imageView.image = image
    }
    
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        dismiss(animated: true, completion: nil)
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        present(alert, animated: true, completion: nil)
    }
}
