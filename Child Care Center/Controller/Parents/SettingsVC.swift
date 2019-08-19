//
//  SettingsVC.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    var settingsView: SettingsView!
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.navigationBar.prefersLargeTitles = true
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.navigationBar.prefersLargeTitles = false
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        setUpEvent()
    }
    
    func setUp() {
        title = "Settings"
        settingsView = SettingsView()
        view = settingsView
    }
    
    func setUpEvent() {
        let tapGestur = UITapGestureRecognizer(target: self, action: #selector(openNotification))
        settingsView.viewNotification.addGestureRecognizer(tapGestur)
    }
    
    @objc func openNotification() {
        navigationController?.pushViewController(NotificationVC(), animated: true)
    }

}
