//
//  ViewController.swift
//  Child Care Center
//
//  Created by GIS on 8/1/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    private var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView = LoginView()
        self.view = loginView
    }
    
    override func viewDidLayoutSubviews() {
        // set up events
        loginView.btnLogIn.addTarget(self, action: #selector(btnLogInClick), for: .touchUpInside)
        loginView.btnSignUp.addTarget(self, action: #selector(btnSignUpClick), for: .touchUpInside)
    }
    
    @objc func btnLogInClick() {
        present(MainController(), animated: true, completion: nil)
    }
    
    @objc func btnSignUpClick() {
        navigationController?.pushViewController(SignUpVC(), animated: true)
    }

}

