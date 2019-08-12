//
//  LoginView.swift
//  Child Care Center
//
//  Created by GIS on 8/1/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    private var lbTitle: UILabel!
    private var tfPhone, tfPassword: UITextField!
    var btnLogIn, btnSignUp: UIButton!
    
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
        lbTitle.text = "Log In"
        lbTitle.textAlignment = .center
        lbTitle.textColor = UIColor.purple
        lbTitle.font = UIFont.boldSystemFont(ofSize: 25)
        addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        lbTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
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
        tfPhone.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 100).isActive = true
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
        tfPassword.isSecureTextEntry = true
        tfPassword.returnKeyType = .done
        addSubview(tfPassword)
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.topAnchor.constraint(equalTo: tfPhone.bottomAnchor, constant: 15).isActive = true
        tfPassword.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfPassword.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        tfPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        //Button LogIn
        btnLogIn = UIButton()
        btnLogIn.setTitle("Log In", for: .normal)
        btnLogIn.backgroundColor = .lightGray
        btnLogIn.layer.cornerRadius = 10
        addSubview(btnLogIn)
        btnLogIn.translatesAutoresizingMaskIntoConstraints = false
        btnLogIn.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 50).isActive = true
        btnLogIn.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        btnLogIn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        
        //Button SignUp
        btnSignUp = UIButton()
        btnSignUp.setTitle("Sign Up", for: .normal)
        btnSignUp.backgroundColor = .lightGray
        btnSignUp.layer.cornerRadius = 10
        addSubview(btnSignUp)
        btnSignUp.translatesAutoresizingMaskIntoConstraints = false
        btnSignUp.topAnchor.constraint(equalTo: btnLogIn.bottomAnchor, constant: 15).isActive = true
        btnSignUp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        btnSignUp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
    }
    
}
