//
//  SignUpVC.swift
//  Child Care Center
//
//  Created by GIS on 8/2/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        view = SignUpView()
    }

}
