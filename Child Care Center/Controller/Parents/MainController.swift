//
//  MainController.swift
//  Child Care Center
//
//  Created by GIS on 8/9/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    var nav: UIViewController!
    var parentsHomeVC: ParentsHomeVC!
    var menuVC: MenuVC!
    
    var isExpand = false

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpParentsHomeVC()
    }
    
    override var prefersStatusBarHidden: Bool {
        return isExpand
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    func setUpParentsHomeVC() {
        parentsHomeVC = ParentsHomeVC()
        parentsHomeVC.delegate = self
        
        nav = UINavigationController(rootViewController: parentsHomeVC)
        nav.view.layer.shadowColor = UIColor.black.cgColor
        nav.view.layer.shadowOpacity = 0.5
        nav.view.layer.shadowRadius = 5
        nav.view.layer.shadowOffset = CGSize(width: -1, height: 0)
        
//        let gesture = UITapGestureRecognizer(target: self, action: #selector(checkMenu))
//        nav.navigationController?.viewControllers.first?.view.addGestureRecognizer(gesture)
        
        view.addSubview(nav.view)
    }
    
    @objc func checkMenu() {
        if isExpand {
            menuToggle()
        }
    }
    
    func setUpMenuVC() {
        if menuVC == nil {
            print("setUp Menu")
            menuVC = MenuVC()
            menuVC.delegate = self
            
            view.insertSubview(menuVC.view, at: 0)
        }
    }
    
    func showMenu() {
        setUpMenuVC()
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.nav.view.frame.origin.x = self.view.frame.width * 0.65
//            self.setNeedsStatusBarAppearanceUpdate()
        })
    }
    
    func closeMenu() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            self.nav.view.frame.origin.x = 0
//            self.setNeedsStatusBarAppearanceUpdate()
        })
    }
    
    func didSelectMenu(menuOptionSelected: MenuOption) {
        switch menuOptionSelected {
        case .Profile:
            print("Prifile Click!")
            parentsHomeVC.navigationController?.pushViewController(DetailVC(), animated: true)
            break
        case .Messages:
            print("Message Click!")
            break
        case .Notifications:
            print("Notification Click!")
            break
        case .Settings:
            print("Settings Click!")
            break
        }
    }

}

extension MainController: ParentsHomeVCDelegate {
    func menuToggle() {
        isExpand = !isExpand
        if isExpand {
            showMenu()
        } else {
            closeMenu()
        }
    }
}
