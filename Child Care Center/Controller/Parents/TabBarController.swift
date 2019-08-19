//
//  TabBarController.swift
//  Child Care Center
//
//  Created by GIS on 8/16/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTabBar()
        
    }
    
    func setUpTabBar() {
        print("Set up tab bar")
        let parentsVC = ParentsHomeVC()
        let messagesVC = MessageVC()
        let cameraVC = CameraVC()
        let profileVC = ProfileVC()
        let settingsVC = SettingsVC()
        parentsVC.tabBarItem = UITabBarItem(title: "Map", image: #imageLiteral(resourceName: "Search"), tag: 0)
        messagesVC.tabBarItem = UITabBarItem(title: "Messages", image: #imageLiteral(resourceName: "Message"), tag: 1)
        cameraVC.tabBarItem = UITabBarItem(title: "Camera", image: #imageLiteral(resourceName: "SecurityCamera"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "Account", image: #imageLiteral(resourceName: "Profile"), tag: 3)
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "SettingsBlack"), tag: 4)
        viewControllers = [parentsVC, messagesVC, cameraVC, profileVC, settingsVC]
    }

}
