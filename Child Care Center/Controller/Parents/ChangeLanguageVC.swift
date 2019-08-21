//
//  ChangeLanguageVC.swift
//  Child Care Center
//
//  Created by GIS on 8/21/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ChangeLanguageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        view.backgroundColor = .white
    }

}
