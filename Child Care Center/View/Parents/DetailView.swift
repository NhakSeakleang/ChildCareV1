//
//  DetailView.swift
//  Child Care Center
//
//  Created by GIS on 8/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    var scrollView: UIScrollView = {
        let scrollV = UIScrollView()
        scrollV.backgroundColor = .clear
        scrollV.showsVerticalScrollIndicator = false
        scrollV.showsHorizontalScrollIndicator = false
        scrollV.alwaysBounceVertical = true
        scrollV.alwaysBounceHorizontal = false
        return scrollV
    }()
    
    var imgScrollView: UIScrollView = {
        let imgScrollV = UIScrollView()
        imgScrollV.isPagingEnabled = true
        imgScrollV.showsHorizontalScrollIndicator = false
        return imgScrollV
    }()
    
    var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        pageControl.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        return pageControl
    }()
    
    
    var mainView: UIView = {
        return UIView()
    }()
    
    var imgView1: UIImageView = {
        let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "MarkerPreview")
        imgV.contentMode = ContentMode.scaleAspectFill
        return imgV
    }()
    
    var imgView2: UIImageView = {
        let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "BabyCareCenter3")
        imgV.contentMode = ContentMode.scaleAspectFill
        return imgV
    }()
    
    var imgView3: UIImageView = {
        let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "BabyCareCenter2")
        imgV.contentMode = ContentMode.scaleAspectFill
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
        lb.textAlignment = .justified
        lb.numberOfLines = 0
        return lb
    }()
    
    var lineView: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        return line
    }()
    
    override func layoutSubviews() {
        backgroundColor = .init(white: 0.9, alpha: 1)
        setUpView()
    }
    
    func setData(image: UIImage, title: String, time: String, description: String) {
        imgView1.image = image
        lbTitle.text = title
        lbTime.text = time
        lbDescription.text = description
    }
    
    func setUpView() {
        
        // Scroll View
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        // main view
        scrollView.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        mainView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        // Image Scroll View
        mainView.addSubview(imgScrollView)
        imgScrollView.translatesAutoresizingMaskIntoConstraints = false
        imgScrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor).isActive = true
        imgScrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor).isActive = true
        imgScrollView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        imgScrollView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imgScrollView.heightAnchor.constraint(equalToConstant: frame.width * 0.571428).isActive = true
        
        // Page Control
        mainView.addSubview(pageControl)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
//        pageControl.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        pageControl.bottomAnchor.constraint(equalTo: imgScrollView.bottomAnchor, constant: -4).isActive = true
        
        // Image View 1
//        mainView.addSubview(imgView1)
        imgScrollView.addSubview(imgView1)
        imgView1.translatesAutoresizingMaskIntoConstraints = false
        imgView1.leadingAnchor.constraint(equalTo: imgScrollView.leadingAnchor).isActive = true
//        imgView1.trailingAnchor.constraint(equalTo: mainView.trailingAnchor).isActive = true
        imgView1.topAnchor.constraint(equalTo: imgScrollView.topAnchor).isActive = true
        imgView1.bottomAnchor.constraint(equalTo: imgScrollView.bottomAnchor).isActive = true
        imgView1.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imgView1.heightAnchor.constraint(equalToConstant: frame.width * 0.571428).isActive = true
        
        // Image view 2
        imgScrollView.addSubview(imgView2)
        imgView2.translatesAutoresizingMaskIntoConstraints = false
        imgView2.leadingAnchor.constraint(equalTo: imgView1.trailingAnchor).isActive = true
        imgView2.topAnchor.constraint(equalTo: imgScrollView.topAnchor).isActive = true
        imgView2.bottomAnchor.constraint(equalTo: imgScrollView.bottomAnchor).isActive = true
        imgView2.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imgView2.heightAnchor.constraint(equalToConstant: frame.width * 0.571428).isActive = true

        // Image view 3
        imgScrollView.addSubview(imgView3)
        imgView3.translatesAutoresizingMaskIntoConstraints = false
        imgView3.leadingAnchor.constraint(equalTo: imgView2.trailingAnchor).isActive = true
        imgView3.trailingAnchor.constraint(equalTo: imgScrollView.trailingAnchor).isActive = true
        imgView3.topAnchor.constraint(equalTo: imgScrollView.topAnchor).isActive = true
        imgView3.bottomAnchor.constraint(equalTo: imgScrollView.bottomAnchor).isActive = true
        imgView3.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imgView3.heightAnchor.constraint(equalToConstant: frame.width * 0.571428).isActive = true

        // Label Title
        mainView.addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16).isActive = true
        lbTitle.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16).isActive = true
        lbTitle.topAnchor.constraint(equalTo: imgScrollView.bottomAnchor, constant: 16).isActive = true

        // Label Time
        mainView.addSubview(lbTime)
        lbTime.translatesAutoresizingMaskIntoConstraints = false
        lbTime.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16).isActive = true
        lbTime.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16).isActive = true
        lbTime.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 16).isActive = true

        // Label Phone
        mainView.addSubview(lbPhone)
        lbPhone.translatesAutoresizingMaskIntoConstraints = false
        lbPhone.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16).isActive = true
        lbPhone.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16).isActive = true
        lbPhone.topAnchor.constraint(equalTo: lbTime.bottomAnchor, constant: 8).isActive = true

        // Line View
        mainView.addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16).isActive = true
        lineView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16).isActive = true
        lineView.topAnchor.constraint(equalTo: lbPhone.bottomAnchor, constant: 16).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        // Label Description
        mainView.addSubview(lbDescription)
        lbDescription.translatesAutoresizingMaskIntoConstraints = false
        lbDescription.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16).isActive = true
        lbDescription.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16).isActive = true
        lbDescription.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 16).isActive = true
        lbDescription.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
    }
    
}
