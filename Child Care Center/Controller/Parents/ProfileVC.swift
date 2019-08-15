//
//  ProfileVC.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    var profileView: ProfileView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }

    func setUp() {
        title = "My account"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveClick))
        profileView = ProfileView()
        view = profileView
    }
    
//    @objc func saveClick() {
//        print("Save")
//    }
}
