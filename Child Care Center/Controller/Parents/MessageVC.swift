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
    
    var actionSheet: UIAlertController!
    var messagesTap: UITapGestureRecognizer!
    var moreTap: UITapGestureRecognizer!

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
        messagesTap = UITapGestureRecognizer(target: self, action: #selector(messageClick))
        moreTap = UITapGestureRecognizer(target: self, action: #selector(moreClick))
        messagesView.viewCell.addGestureRecognizer(messagesTap)
        messagesView.lbMore.addGestureRecognizer(moreTap)
        
    }

    @objc func messageClick() {
        navigationController?.pushViewController(MessageDetailVC(), animated: true)
    }
    
    @objc func moreClick() {
        print("more click")
        if actionSheet == nil {
            actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            let voiceCallAction = UIAlertAction(title: "Voice call", style: .default) { (action) in
                print("Voice call")
            }
            
            let videoCallAction = UIAlertAction(title: "Video call", style: .default) { (action) in
                print("Video call")
            }
            
            let viewProfileAction = UIAlertAction(title: "View profile", style: .default) { (action) in
                print("View profile")
                self.navigationController?.pushViewController(BabySitterProfileVC(), animated: true)
            }
            
            let reportAction = UIAlertAction(title: "Report", style: .destructive) { (action) in
                print("Report")
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                print("Cancel")
            }
            
            actionSheet.addAction(voiceCallAction)
            actionSheet.addAction(videoCallAction)
            actionSheet.addAction(viewProfileAction)
            actionSheet.addAction(reportAction)
            actionSheet.addAction(cancelAction)
        }
        present(actionSheet, animated: true, completion: nil)
    }
}
