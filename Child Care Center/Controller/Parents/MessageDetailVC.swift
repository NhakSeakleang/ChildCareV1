//
//  MessageDetailVC.swift
//  Child Care Center
//
//  Created by GIS on 8/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MessageDetailVC: UIViewController {
    
    var messageDetailView: MessageDetailView = {
        return MessageDetailView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavigationBar()
        setUpView()
    }
    
    func setUpNavigationBar() {
        navigationItem.titleView = CustomHeaderMessage()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "VoiceCall"), style: .plain, target: self, action: #selector(call))
    }
    
    @objc func call() {
        print("Voice call")
    }
    
    func setUpView() {
        view = messageDetailView
    }

}
