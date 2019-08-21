//
//  CameraVCViewController.swift
//  Child Care Center
//
//  Created by GIS on 8/19/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {
    
    var cameraView: CameraView = {
        return CameraView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }

    func setUp() {
        view = cameraView
    }
}
