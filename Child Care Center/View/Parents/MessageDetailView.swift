//
//  MessageDetailView.swift
//  Child Care Center
//
//  Created by GIS on 8/15/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MessageDetailView: UIView {
    
    var viewText: UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }()
    
    var tfMessage: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.clipsToBounds = true
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 10
        tf.placeholder = "Text Message"
        tf.rightViewMode = .always
        tf.rightView = UIImageView(image: #imageLiteral(resourceName: "VoiceCall"))
        return tf
    }()
    
    
    override func layoutSubviews() {
        
        setUpView()
    }
    
    func setUpView() {
        
        backgroundColor = UIColor(white: 0.9, alpha: 1)
        
        // viewText
        addSubview(viewText)
        viewText.translatesAutoresizingMaskIntoConstraints = false
        viewText.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewText.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewText.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    
        // textfield message
        viewText.addSubview(tfMessage)
        tfMessage.translatesAutoresizingMaskIntoConstraints = false
        tfMessage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tfMessage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tfMessage.topAnchor.constraint(equalTo: viewText.topAnchor).isActive = true
        tfMessage.bottomAnchor.constraint(equalTo: viewText.bottomAnchor).isActive = true
        
    }
    
}

class CustomHeaderMessage: UIStackView {
    
    var lbName: UILabel = {
        let lb = UILabel()
        lb.text = "Alina Finiti"
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbStatus: UILabel = {
        let lb = UILabel()
        lb.text = "Active Now"
        lb.textAlignment = .center
        lb.font = lb.font.withSize(13)
        lb.textColor = UIColor(white: 0.5, alpha: 0.5)
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUp()
        setUpView()
    }
    
    func setUp() {
        
        axis = .vertical
        alignment = .fill
        distribution = .fillEqually
        
    }
    
    func setUpView() {
        
        // label name
        addArrangedSubview(lbName)
        
        // label status
        addArrangedSubview(lbStatus)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
