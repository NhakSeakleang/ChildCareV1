//
//  ChangePasswordVC.swift
//  Child Care Center
//
//  Created by GIS on 8/21/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ChangePasswordVC: UIViewController {
    
    var changePasswordView: ChangePasswordView = {
        return ChangePasswordView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    func setUp() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        view = changePasswordView
        
        changePasswordView.tfPassword.delegate = self
        changePasswordView.tfNewPassword.delegate = self
        changePasswordView.tfConfirmNewPassword.delegate = self
    }

}

extension ChangePasswordVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
