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

        // Line View
        addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lineView.topAnchor.constraint(equalTo: lbTime.bottomAnchor, constant: 16).isActive = true
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
        lbDescription.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
//        lbDescription.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
        lbDescription.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        lbDescription.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        lbDescription.widthAnchor.constraint(equalToConstant: frame.width - 16).isActive = true
    }
    
}
