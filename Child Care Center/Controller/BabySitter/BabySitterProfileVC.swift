//
//  BabySitterProfile.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class BabySitterProfileVC: UIViewController {
    
    var babySitterProfileView: BabySitterProfileView = {
        return BabySitterProfileView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    func setUp() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        view = babySitterProfileView
    }

}
