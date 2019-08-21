//
//  ChangePasswordView.swift
//  Child Care Center
//
//  Created by GIS on 8/21/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ChangePasswordView: UIView {
    
    var lbTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Change password"
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        return lb
    }()
    
    var tfPassword: UITextField = {
        let tf = UITextField()
        tf.borderStyle = UITextField.BorderStyle.roundedRect
        tf.placeholder = "Old password"
        tf.keyboardType = UIKeyboardType.alphabet
        tf.isSecureTextEntry = true
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return tf
    }()
    
    var tfNewPassword: UITextField = {
        let tf = UITextField()
        tf.borderStyle = UITextField.BorderStyle.roundedRect
        tf.placeholder = "New password"
        tf.keyboardType = UIKeyboardType.alphabet
        tf.isSecureTextEntry = true
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return tf
    }()
    
    var tfConfirmNewPassword: UITextField = {
        let tf = UITextField()
        tf.borderStyle = UITextField.BorderStyle.roundedRect
        tf.placeholder = "Confirm new password"
        tf.keyboardType = UIKeyboardType.alphabet
        tf.isSecureTextEntry = true
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return tf
    }()
    
    var btnUpdatePWD: UIButton = {
        let btn = UIButton(type: .roundedRect)
        btn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        btn.setTitle("Update password", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    override func layoutSubviews() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        
        //label title
        addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        
        //textfield old password
        addSubview(tfPassword)
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfPassword.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfPassword.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tfPassword.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 32).isActive = true
        
        //textfield new password
        addSubview(tfNewPassword)
        tfNewPassword.translatesAutoresizingMaskIntoConstraints = false
        tfNewPassword.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfNewPassword.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfNewPassword.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tfNewPassword.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 32).isActive = true
        
        //textfield old password
        addSubview(tfConfirmNewPassword)
        tfConfirmNewPassword.translatesAutoresizingMaskIntoConstraints = false
        tfConfirmNewPassword.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfConfirmNewPassword.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfConfirmNewPassword.heightAnchor.constraint(equalToConstant: 48).isActive = true
        tfConfirmNewPassword.topAnchor.constraint(equalTo: tfNewPassword.bottomAnchor, constant: 32).isActive = true
        
        // button update password
        addSubview(btnUpdatePWD)
        btnUpdatePWD.translatesAutoresizingMaskIntoConstraints = false
        btnUpdatePWD.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        btnUpdatePWD.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        btnUpdatePWD.heightAnchor.constraint(equalToConstant: 48).isActive = true
        btnUpdatePWD.topAnchor.constraint(equalTo: tfConfirmNewPassword.bottomAnchor, constant: 32).isActive = true
        
    }
    
}
