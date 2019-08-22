//
//  ParentsEditProfileVC.swift
//  Child Care Center
//
//  Created by GIS on 8/21/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ParentsEditProfileVC: UIViewController {
    
    var parentsEditProfileView: ParentsEditProfileView = {
        return ParentsEditProfileView()
    }()
    
    var sex = ["Female", "Male"]
    
    var sexPicker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        
    }
    
    func setUp() {
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        title = "Edit profile"
        
        view = parentsEditProfileView
        
        
        sexPicker.delegate = self
        parentsEditProfileView.tfName.delegate = self
        parentsEditProfileView.tfSex.delegate = self
        parentsEditProfileView.tfPhone.delegate = self
        parentsEditProfileView.tfEmail.delegate = self
        parentsEditProfileView.tfCity.delegate = self
        
        parentsEditProfileView.tfSex.inputView = sexPicker
        
    }
    
    func chooseSex(_ textField: UITextField) {
        if (textField.text ?? "").isEmpty{
            textField.text = "Female"
        }
        for i in 0...sex.count - 1 {
            if sex[i] == textField.text {
                sexPicker.selectRow(i, inComponent: 0, animated: true)
                return
            }
        }
    }

}

extension ParentsEditProfileVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let tf = textField as? CustomTextField
        tf?.bottomBorder.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        if tf?.tag == 1 {
            tf?.rightView?.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            chooseSex(textField)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.tag == 1 {
            textField.rightView?.tintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        (textField as? CustomTextField)?.bottomBorder.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension ParentsEditProfileVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sex.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sex[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        parentsEditProfileView.tfSex.text = sex[row]
    }
    
}
