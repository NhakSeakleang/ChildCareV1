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
        let tapGesturEditProfile = UITapGestureRecognizer(target: self, action: #selector(editProfileClick))
        let tapGesturNotification = UITapGestureRecognizer(target: self, action: #selector(notificationClick))
        let tapGesturChangePassword = UITapGestureRecognizer(target: self, action: #selector(changePasswordClick))
        let tapGesturChangeLanguage = UITapGestureRecognizer(target: self, action: #selector(changeLanguageClick))
        
        settingsView.viewEditProfile.addGestureRecognizer(tapGesturEditProfile)
        settingsView.viewChangePWD.addGestureRecognizer(tapGesturChangePassword)
        settingsView.viewChangeLang.addGestureRecognizer(tapGesturChangeLanguage)
        settingsView.viewNotification.addGestureRecognizer(tapGesturNotification)
    }
    
    @objc func editProfileClick() {
        navigationController?.pushViewController(ParentsEditProfileVC(), animated: true)
    }
    
    @objc func changePasswordClick() {
        navigationController?.pushViewController(ChangePasswordVC(), animated: true)
    }
    
    @objc func changeLanguageClick() {
        navigationController?.pushViewController(ChangeLanguageVC(), animated: true)
    }
    
    @objc func notificationClick() {
        navigationController?.pushViewController(NotificationVC(), animated: true)
    }

}
