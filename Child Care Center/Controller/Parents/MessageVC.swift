//
//  MessageVC.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MessageVC: UIViewController {
    
    var messagesView: MessagesView = {
        return MessagesView()
    }()
    
    var tap: UITapGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        setUpEvent()
    }
    
    func setUp() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        title = "Messages"
        view = messagesView
        
    }
    
    func setUpEvent() {
        
        tap = UITapGestureRecognizer(target: self, action: #selector(messageClick))
        messagesView.viewCell.addGestureRecognizer(tap)
        
    }

    @objc func messageClick() {
        navigationController?.pushViewController(MessageDetailVC(), animated: true)
    }
    
}
