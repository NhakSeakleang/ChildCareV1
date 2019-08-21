//
//  CameraView.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class CameraView: UIView {
    
    var camera1: cardCameraPreview = {
        let cam = cardCameraPreview()
        cam.setData(image: #imageLiteral(resourceName: "BabyCareCenter3"), title: "Camera1")
        return cam
    }()
    
    var camera2: cardCameraPreview = {
        let cam = cardCameraPreview()
        cam.setData(image: #imageLiteral(resourceName: "Camera2"), title: "Camera2")
        return cam
    }()
    
    override func layoutSubviews() {
        backgroundColor = UIColor(white: 1, alpha: 0.9)
        setUpView()
    }
    
    func setUpView() {
        //Camera1
        addSubview(camera1)
        camera1.translatesAutoresizingMaskIntoConstraints = false
        camera1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        camera1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        camera1.widthAnchor.constraint(equalToConstant: frame.width - 16).isActive = true
        camera1.heightAnchor.constraint(equalToConstant: frame.width * 0.571428 + 25).isActive = true
        
        //Camera2
        addSubview(camera2)
        camera2.translatesAutoresizingMaskIntoConstraints = false
        camera2.topAnchor.constraint(equalTo: camera1.bottomAnchor, constant: 8).isActive = true
        camera2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        camera2.widthAnchor.constraint(equalToConstant: frame.width - 16).isActive = true
        camera2.heightAnchor.constraint(equalToConstant: frame.width * 0.571428 + 25).isActive = true
    }
    
}

class cardCameraPreview: UIView {
    
    var imgPre: UIImageView = {
        let img = UIImageView()
        img.contentMode = ContentMode.scaleAspectFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        return img
    }()
    
    var lbTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Title"
        lb.textAlignment = .center
        lb.textColor = .gray
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setUpView()
    }
    
    func setData(image: UIImage, title: String) {
        imgPre.image = image
        lbTitle.text = title
    }
    
    func setUp() {
        backgroundColor = UIColor(white: 1, alpha: 0.5)
        clipsToBounds = true
        layer.cornerRadius = 15
    }
    
    func setUpView() {
        print("width = \(frame.width)")
        // Label title
        addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        lbTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        lbTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
        // Image preview
        addSubview(imgPre)
        imgPre.translatesAutoresizingMaskIntoConstraints = false
        imgPre.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        imgPre.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        imgPre.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        imgPre.bottomAnchor.constraint(equalTo: lbTitle.topAnchor, constant: -5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
