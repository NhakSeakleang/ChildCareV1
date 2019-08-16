//
//  NotificationVC.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController {
    
    var notificationView: NotificationView = {
        return NotificationView()
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        setData()
    }
    
    func setUp() {
        title = "Notifications"
        view = notificationView
    }
    
    func setData() {
        
        let formatrer = DateFormatter()
        formatrer.dateFormat = "dd MMMM yyyy hh:mm a"
        notificationView.setData(dateTime: formatrer.string(from: Date()), discription: "Thank you. Your booking has been completed.")
        
    }

}
