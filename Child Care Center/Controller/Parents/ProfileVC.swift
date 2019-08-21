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
        setUpEvent()
    }

    func setUp() {
        title = "My account"
        profileView = ProfileView()
        view = profileView
    }
    
    func setUpEvent() {
        profileView.btnLogout.addTarget(self, action: #selector(logout), for: .touchUpInside)
        let child1Tap = UITapGestureRecognizer(target: self, action: #selector(child1Click))
        profileView.viewChildren1.addGestureRecognizer(child1Tap)
    }
    
    @objc func child1Click() {
        navigationController?.pushViewController(BabyProfileVC(), animated: true)
    }
    
    @objc func logout() {
        print("Logout")
        navigationController?.viewControllers = [LoginVC()]
    }
}
