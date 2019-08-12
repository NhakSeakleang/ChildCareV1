//
//  SignUpView.swift
//  Child Care Center
//
//  Created by GIS on 8/2/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SignUpView: UIView {
    
    var lbTitle: UILabel!
    var tfFirstname, tfLastname, tfPhone, tfPassword, tfConfirm: UITextField!
    var btnSignUp: UIButton!
    

    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        //Label title
        lbTitle = UILabel()
        lbTitle.text = "Sign Up"
        lbTitle.textAlignment = .center
        lbTitle.textColor = UIColor.purple
        lbTitle.font = UIFont.boldSystemFont(ofSize: 25)
        addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        lbTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // TextField Firstname
        tfFirstname = UITextField()
        tfFirstname.borderStyle = .roundedRect
        tfFirstname.clipsToBounds = true
        tfFirstname.layer.borderColor = UIColor.lightGray.cgColor
        tfFirstname.layer.borderWidth = 1
        tfFirstname.layer.cornerRadius = 10
        tfFirstname.placeholder = "First name"
        tfFirstname.keyboardType = .phonePad
        tfFirstname.returnKeyType = .next
        addSubview(tfFirstname)
        tfFirstname.translatesAutoresizingMaskIntoConstraints = false
        tfFirstname.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 100).isActive = true
        tfFirstname.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfFirstname.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfFirstname.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        // TextField Lastname
        tfLastname = UITextField()
        tfLastname.borderStyle = .roundedRect
        tfLastname.clipsToBounds = true
        tfLastname.layer.borderColor = UIColor.lightGray.cgColor
        tfLastname.layer.borderWidth = 1
        tfLastname.layer.cornerRadius = 10
        tfLastname.placeholder = "Last name"
        tfLastname.keyboardType = .phonePad
        tfLastname.returnKeyType = .next
        addSubview(tfLastname)
        tfLastname.translatesAutoresizingMaskIntoConstraints = false
        tfLastname.topAnchor.constraint(equalTo: tfFirstname.bottomAnchor, constant: 15).isActive = true
        tfLastname.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfLastname.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfLastname.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        // TextField Phone
        tfPhone = UITextField()
        tfPhone.borderStyle = .roundedRect
        tfPhone.clipsToBounds = true
        tfPhone.layer.borderColor = UIColor.lightGray.cgColor
        tfPhone.layer.borderWidth = 1
        tfPhone.layer.cornerRadius = 10
        tfPhone.placeholder = "Phone number"
        tfPhone.keyboardType = .phonePad
        tfPhone.returnKeyType = .next
        addSubview(tfPhone)
        tfPhone.translatesAutoresizingMaskIntoConstraints = false
        tfPhone.topAnchor.constraint(equalTo: tfLastname.bottomAnchor, constant: 15).isActive = true
        tfPhone.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfPhone.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfPhone.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        // TextField Password
        tfPassword = UITextField()
        tfPassword.borderStyle = .roundedRect
        tfPassword.clipsToBounds = true
        tfPassword.layer.borderColor = UIColor.lightGray.cgColor
        tfPassword.layer.borderWidth = 1
        tfPassword.layer.cornerRadius = 10
        tfPassword.placeholder = "Password"
        tfPassword.keyboardType = .phonePad
        tfPassword.returnKeyType = .next
        addSubview(tfPassword)
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.topAnchor.constraint(equalTo: tfPhone.bottomAnchor, constant: 15).isActive = true
        tfPassword.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfPassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        // TextField Confirm
        tfConfirm = UITextField()
        tfConfirm.borderStyle = .roundedRect
        tfConfirm.clipsToBounds = true
        tfConfirm.layer.borderColor = UIColor.lightGray.cgColor
        tfConfirm.layer.borderWidth = 1
        tfConfirm.layer.cornerRadius = 10
        tfConfirm.placeholder = "Confirm"
        tfConfirm.keyboardType = .phonePad
        tfConfirm.returnKeyType = .next
        addSubview(tfConfirm)
        tfConfirm.translatesAutoresizingMaskIntoConstraints = false
        tfConfirm.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 15).isActive = true
        tfConfirm.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfConfirm.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfConfirm.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        //Button SignUp
        btnSignUp = UIButton()
        btnSignUp.setTitle("SignUp Now", for: .normal)
        btnSignUp.backgroundColor = .lightGray
        btnSignUp.layer.cornerRadius = 10
        addSubview(btnSignUp)
        btnSignUp.translatesAutoresizingMaskIntoConstraints = false
        btnSignUp.topAnchor.constraint(equalTo: tfConfirm.bottomAnchor, constant: 50).isActive = true
        btnSignUp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        btnSignUp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
    }

}
