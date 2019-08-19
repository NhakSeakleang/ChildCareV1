//
//  SelectBabysitterVC.swift
//  Child Care Center
//
//  Created by GIS on 8/19/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SelectBabysitterVC: UIViewController {
    
    var selectBabysitterView: SelectBabysitterView = {
        return SelectBabysitterView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(done))
        setUp()
    }
    
    func setUp() {
        view = selectBabysitterView
    }
    
    @objc func done() {
        navigationController?.popToRootViewController(animated: true)
    }

}
