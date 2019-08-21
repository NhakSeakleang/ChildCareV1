//
//  MessagesView.swift
//  Child Care Center
//
//  Created by GIS on 8/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MessagesView: UIView {
    
    var viewCell: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(white: 0.98, alpha: 1)
        return v
    }()
    
    var imgBabysitter1: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "Babysitter")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 37.5
//        imgView.layer.borderColor = UIColor(white: 1, alpha: 0.5).cgColor
//        imgView.layer.borderWidth = 0
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild1: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child1")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.layer.cornerRadius = 17.5
        imgView.layer.borderColor = UIColor(white: 0.98, alpha: 1).cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var lbMore: UILabel = {
        let lb = UILabel()
        lb.text = "⋮"
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.isUserInteractionEnabled = true
        return lb
    }()
    
    var lbName: UILabel = {
        let lb = UILabel()
        lb.text = "Alina Finiti"
        lb.textColor = .gray
        lb.font = lb.font.withSize(18)
        return lb
    }()
    
    var lbMessage: UILabel = {
        let lb = UILabel()
        lb.text = "How are you doing? everything okay?"
        lb.textColor = .gray
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var lbStatus: UILabel = {
        let lb = UILabel()
        lb.text = "Delivered"
        lb.textColor = .gray
        lb.font = lb.font.withSize(13)
        return lb
    }()
    
    var lbTime: UILabel = {
        let lb = UILabel()
        lb.text = "08:45 AM"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 13)
        return lb
    }()
    
    
    override func layoutSubviews() {
        backgroundColor = UIColor(white: 0.95, alpha: 1)
        setUpView()
    }
    
    func setUpView() {
        
        // view cell
        addSubview(viewCell)
        viewCell.translatesAutoresizingMaskIntoConstraints = false
        viewCell.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewCell.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewCell.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        
        //image babysitter
        viewCell.addSubview(imgBabysitter1)
        imgBabysitter1.translatesAutoresizingMaskIntoConstraints = false
        imgBabysitter1.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imgBabysitter1.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imgBabysitter1.leadingAnchor.constraint(equalTo: viewCell.leadingAnchor, constant: 16).isActive = true
        imgBabysitter1.topAnchor.constraint(equalTo: viewCell.topAnchor, constant: 16).isActive = true
        imgBabysitter1.bottomAnchor.constraint(equalTo: viewCell.bottomAnchor, constant: -16).isActive = true
        
        //image child 1
        viewCell.addSubview(imgChild1)
        imgChild1.translatesAutoresizingMaskIntoConstraints = false
        imgChild1.widthAnchor.constraint(equalToConstant: 35).isActive = true
        imgChild1.heightAnchor.constraint(equalToConstant: 35).isActive = true
        imgChild1.trailingAnchor.constraint(equalTo: imgBabysitter1.trailingAnchor).isActive = true
        imgChild1.bottomAnchor.constraint(equalTo: imgBabysitter1.bottomAnchor).isActive = true
        
        // label more
        viewCell.addSubview(lbMore)
        lbMore.translatesAutoresizingMaskIntoConstraints = false
        lbMore.widthAnchor.constraint(equalToConstant: 32).isActive = true
        lbMore.centerYAnchor.constraint(equalTo: viewCell.centerYAnchor).isActive = true
        lbMore.trailingAnchor.constraint(equalTo: viewCell.trailingAnchor).isActive = true
        
        // label message
        viewCell.addSubview(lbMessage)
        lbMessage.translatesAutoresizingMaskIntoConstraints = false
        lbMessage.centerYAnchor.constraint(equalTo: viewCell.centerYAnchor, constant: 4).isActive = true
        lbMessage.leadingAnchor.constraint(equalTo: imgBabysitter1.trailingAnchor, constant: 16).isActive = true
        lbMessage.trailingAnchor.constraint(equalTo: lbMore.leadingAnchor, constant: -32).isActive = true

        // label name
        viewCell.addSubview(lbName)
        lbName.translatesAutoresizingMaskIntoConstraints = false
        lbName.leadingAnchor.constraint(equalTo: imgBabysitter1.trailingAnchor, constant: 16).isActive = true
        lbName.bottomAnchor.constraint(equalTo: lbMessage.topAnchor, constant: -4).isActive = true

        // label status
        viewCell.addSubview(lbStatus)
        lbStatus.translatesAutoresizingMaskIntoConstraints = false
        lbStatus.leadingAnchor.constraint(equalTo: imgBabysitter1.trailingAnchor, constant: 16).isActive = true
        lbStatus.topAnchor.constraint(equalTo: lbMessage.bottomAnchor, constant: 4).isActive = true

        // label time
        viewCell.addSubview(lbTime)
        lbTime.translatesAutoresizingMaskIntoConstraints = false
        lbTime.trailingAnchor.constraint(equalTo: viewCell.trailingAnchor, constant: -16).isActive = true
        lbTime.topAnchor.constraint(equalTo: lbMessage.bottomAnchor, constant: 4).isActive = true
        
    }
    
}
