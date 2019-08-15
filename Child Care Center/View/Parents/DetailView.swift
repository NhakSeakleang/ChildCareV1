//
//  DetailView.swift
//  Child Care Center
//
//  Created by GIS on 8/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    var imgView: UIImageView = {
        let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "MarkerPreview")
        imgV.contentMode = ContentMode.scaleAspectFit
        return imgV
    }()
    
    var lbTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Title"
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        return lb
    }()
    
    var lbTime: UILabel = {
        let lb = UILabel()
        lb.text = "Time"
        return lb
    }()
    
    var lbPhone: UILabel = {
        let lb = UILabel()
        lb.text = "+855 96 168 168"
        return lb
    }()
    
    
    
    var lbDescription: UILabel = {
        let lb = UILabel()
        lb.text = "Description"
        lb.numberOfLines = 0
        return lb
    }()
    
    var lineView: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        return line
    }()
    
    var scrollView: UIScrollView = {
        let scrollV = UIScrollView()
        scrollV.backgroundColor = .clear
        scrollV.showsVerticalScrollIndicator = false
        scrollV.alwaysBounceVertical = true
        scrollV.alwaysBounceHorizontal = false
        return scrollV
    }()
    
    var btnBook: UIButton = {
        let btn = UIButton(type: .roundedRect)
        btn.setTitle("Book", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    override func layoutSubviews() {
        backgroundColor = .init(white: 0.9, alpha: 1)
        setUpView()
    }
    
    func setData(image: UIImage, title: String, time: String, description: String) {
        imgView.image = image
        lbTitle.text = title
        lbTime.text = time
        lbDescription.text = description
    }
    
    func setUpView() {
        
        // Image View
        addSubview(imgView)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imgView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imgView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: frame.width * 0.571428).isActive = true
//        imgView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        // Label Title
        addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbTitle.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        lbTitle.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 16).isActive = true

        // Label Time
        addSubview(lbTime)
        lbTime.translatesAutoresizingMaskIntoConstraints = false
        lbTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbTime.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        lbTime.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 16).isActive = true
        
        // Label Phone
        addSubview(lbPhone)
        lbPhone.translatesAutoresizingMaskIntoConstraints = false
        lbPhone.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbPhone.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        lbPhone.topAnchor.constraint(equalTo: lbTime.bottomAnchor, constant: 8).isActive = true
        
        // Button Books
        addSubview(btnBook)
        btnBook.translatesAutoresizingMaskIntoConstraints = false
        btnBook.widthAnchor.constraint(equalToConstant: frame.width / 2).isActive = true
        btnBook.heightAnchor.constraint(equalToConstant: 35).isActive = true
        btnBook.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        btnBook.topAnchor.constraint(equalTo: lbPhone.bottomAnchor, constant: 16).isActive = true

        // Line View
        addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lineView.topAnchor.constraint(equalTo: btnBook.bottomAnchor, constant: 16).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // Scroll View
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        scrollView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 16).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollView.contentSize.width = scrollView.frame.width

        // Label Description
        scrollView.addSubview(lbDescription)
        lbDescription.translatesAutoresizingMaskIntoConstraints = false
        lbDescription.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        lbDescription.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        lbDescription.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        lbDescription.widthAnchor.constraint(equalToConstant: frame.width - 16).isActive = true
    }
    
}
