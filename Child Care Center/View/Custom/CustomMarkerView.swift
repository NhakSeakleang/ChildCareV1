//
//  CustomMarkerView.swift
//  Child Care Center
//
//  Created by GIS on 8/7/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class CustomMarkerView: UIView {
    
    var img: UIImage!
    var borderColor: UIColor!
    
    init(image: UIImage, borderColor: UIColor, tag: Int) {
        super.init(frame: CGRect(x: 0, y: 0, width: 50, height: 55))
        self.img = image
        self.borderColor = borderColor
        self.tag = tag
        setUpView()
    }
    
    func setUpView() {
        let imgView = UIImageView(image: img)
        imgView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        imgView.layer.cornerRadius = 25
        imgView.layer.borderColor = borderColor?.cgColor
        imgView.layer.borderWidth = 4
        imgView.clipsToBounds = true
        let lb = UILabel(frame: CGRect(x: 0, y: 45, width: 50, height: 10))
        lb.text = "▼"
        lb.font = UIFont.systemFont(ofSize: 24)
        lb.textColor = borderColor
        lb.textAlignment = .center
        
        self.addSubview(imgView)
        self.addSubview(lb)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
