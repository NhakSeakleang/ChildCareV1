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
    private var btnLogin, btnNew: UIButton!
    
    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
        addView()
        setUpLayout()
    }
    
    func setUpView() {
        //Label title
        lbTitle = UILabel()
        lbTitle.text = "Login"
        lbTitle.textAlignment = .center
        lbTitle.backgroundColor = .yellow
    }
    
    func setUpLayout() {
        // Label title
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        lbTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
//        lbTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
        lbTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
    }
    
    func addView() {
        //Label title
        self.addSubview(lbTitle)
    }
    
}
