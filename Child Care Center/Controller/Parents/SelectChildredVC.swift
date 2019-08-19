//
//  SelectChildredVC.swift
//  Child Care Center
//
//  Created by GIS on 8/14/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SelectChildredVC: UIViewController {
    
    var selectChildrenView: SelectChildrenView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    func setUp() {
        title = "Select Children"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextClick))
        selectChildrenView = SelectChildrenView()
        view = selectChildrenView
    }
    
    @objc func nextClick() {
        navigationController?.pushViewController(SelectBabysitterVC(), animated: true)
    }

}
