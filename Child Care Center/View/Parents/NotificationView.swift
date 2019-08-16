//
//  NotificationView.swift
//  Child Care Center
//
//  Created by GIS on 8/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class NotificationView: UIView {
    
    var viewNotification: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(white: 0.95, alpha: 1)
        v.clipsToBounds = true
        v.layer.cornerRadius = 5
//        v.layer.shadowOpacity = 1
//        v.layer.shadowColor = UIColor.black.cgColor
//        v.layer.shadowRadius = 15
//        v.layer.shadowOffset = CGSize(width: v.frame.width+5, height: v.frame.height+5)
        return v
    }()
    
    var lbDateTime: UILabel = {
        let lb = UILabel()
        lb.text = "Date time"
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        return lb
    }()
    
    var lbDiscription: UILabel = {
        let lb = UILabel()
        lb.text = "Description"
        lb.font = lb.font.withSize(15)
        lb.textAlignment = .justified
        return lb
    }()
    
    
    override func layoutSubviews() {
        
        backgroundColor = UIColor(white: 0.9, alpha: 1)
        setUpView()
        
    }
    
    func setUpView() {
        
        // view
        addSubview(viewNotification)
        viewNotification.translatesAutoresizingMaskIntoConstraints = false
        viewNotification.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewNotification.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewNotification.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        
        // label date time
        viewNotification.addSubview(lbDateTime)
        lbDateTime.translatesAutoresizingMaskIntoConstraints = false
        lbDateTime.leadingAnchor.constraint(equalTo: viewNotification.leadingAnchor, constant: 16).isActive = true
        lbDateTime.trailingAnchor.constraint(equalTo: viewNotification.trailingAnchor, constant: -16).isActive = true
        lbDateTime.topAnchor.constraint(equalTo: viewNotification.topAnchor, constant: 16).isActive = true
        
        // label descrtiption
        viewNotification.addSubview(lbDiscription)
        lbDiscription.translatesAutoresizingMaskIntoConstraints = false
        lbDiscription.leadingAnchor.constraint(equalTo: viewNotification.leadingAnchor, constant: 16).isActive = true
        lbDiscription.trailingAnchor.constraint(equalTo: viewNotification.trailingAnchor, constant: -16).isActive = true
        lbDiscription.topAnchor.constraint(equalTo: lbDateTime.bottomAnchor, constant: 8).isActive = true
        lbDiscription.bottomAnchor.constraint(equalTo: viewNotification.bottomAnchor, constant: -16).isActive = true
        
    }
    
    func setData(dateTime: String, discription: String) {
        lbDateTime.text = dateTime
        lbDiscription.text = discription
    }
    
}
