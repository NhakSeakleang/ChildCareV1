//
//  TabBarController.swift
//  Child Care Center
//
//  Created by GIS on 8/16/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var parentsVC = ParentsHomeVC()
    var messagesVC = MessageVC()
    var cameraVC = CameraVC()
    var profileVC = ProfileVC()
    var settingsVC = SettingsVC()
    
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
        parentsVC.tabBarItem = UITabBarItem(title: "Map", image: #imageLiteral(resourceName: "Search"), tag: 0)
        messagesVC.tabBarItem = UITabBarItem(title: "Messages", image: #imageLiteral(resourceName: "Message"), tag: 1)
        cameraVC.tabBarItem = UITabBarItem(title: "Camera", image: #imageLiteral(resourceName: "SecurityCamera"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "Account", image: #imageLiteral(resourceName: "Profile"), tag: 3)
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "SettingsBlack"), tag: 4)
        viewControllers = [parentsVC, messagesVC, cameraVC, profileVC, settingsVC]
        tabBar.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item {
        case parentsVC.tabBarItem:
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "Map", style: .plain, target: nil, action: nil)
        case messagesVC.tabBarItem:
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        case profileVC.tabBarItem:
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        case settingsVC.tabBarItem:
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        default:
            break
        }
    }

}
