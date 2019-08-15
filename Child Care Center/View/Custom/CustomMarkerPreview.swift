//
//  CustomMarkerPreview.swift
//  Child Care Center
//
//  Created by GIS on 8/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class CustomMarkerPreview: UIView {
    
    let containerView: UIView = {
        let v = UIView()
        v.backgroundColor = .lightGray
        v.layer.cornerRadius = 15
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let lbTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Title"
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        lb.textColor = .black
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let imgView: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
        img.image = #imageLiteral(resourceName: "MarkerPreview")
        img.contentMode = ContentMode.scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let lbBottom: UILabel = {
        let lb = UILabel(frame: CGRect(x: 0, y: 45, width: 50, height: 10))
        lb.text = "▼"
        lb.font = UIFont.systemFont(ofSize: 24)
        lb.textColor = .lightGray
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    init(width: CGFloat) {
        let height = (width * 0.571428) + 45
        super.init(frame: CGRect(x: 0, y: 0, width: width, height: height))
        setUp()
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(title: String, image: UIImage) {
        lbTitle.text = title
        imgView.image = image
    }
    
    func setUp() {
        backgroundColor = .clear
        clipsToBounds = true
        layer.masksToBounds = true
    }
    
    func setUpView() {
        
        // LabelBottom
        addSubview(lbBottom)
        lbBottom.heightAnchor.constraint(equalToConstant: 10).isActive = true
        lbBottom.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        lbBottom.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        lbBottom.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        // ContainerView
        addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: lbBottom.topAnchor, constant: 5).isActive = true
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        // Label Title
        containerView.addSubview(lbTitle)
        lbTitle.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        lbTitle.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        lbTitle.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        lbTitle.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        // ImageView
        containerView.addSubview(imgView)
        imgView.topAnchor.constraint(equalTo: lbTitle.bottomAnchor).isActive = true
        imgView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5).isActive = true
        imgView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5).isActive = true
        imgView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -5).isActive = true
        
    }
}
