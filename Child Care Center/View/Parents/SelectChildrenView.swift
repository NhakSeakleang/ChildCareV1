//
//  SelectChildrenView.swift
//  Child Care Center
//
//  Created by GIS on 8/14/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SelectChildrenView: UIView {
    
    var viewChildren1: UIView = {
        return UIView()
    }()
    
    var viewChildren2: UIView = {
        return UIView()
    }()
    
    var viewChildren3: UIView = {
        return UIView()
    }()
    
    var imgChild1: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child1")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild2: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child2")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild3: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child3")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var lbChildrenName1: UILabel = {
        let lb = UILabel()
        lb.text = "Emma"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChildrenName2: UILabel = {
        let lb = UILabel()
        lb.text = "Jack"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChildrenName3: UILabel = {
        let lb = UILabel()
        lb.text = "Amelia"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var swChild1: UISwitch = {
        return UISwitch()
    }()
    
    var swChild2: UISwitch = {
        return UISwitch()
    }()
    
    var swChild3: UISwitch = {
        return UISwitch()
    }()
    
    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        
        // view children1
        addSubview(viewChildren1)
        viewChildren1.translatesAutoresizingMaskIntoConstraints = false
        viewChildren1.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewChildren1.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewChildren1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        
        // view children2
        addSubview(viewChildren2)
        viewChildren2.translatesAutoresizingMaskIntoConstraints = false
        viewChildren2.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewChildren2.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewChildren2.topAnchor.constraint(equalTo: viewChildren1.bottomAnchor, constant: 16).isActive = true
        
        // view children3
        addSubview(viewChildren3)
        viewChildren3.translatesAutoresizingMaskIntoConstraints = false
        viewChildren3.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewChildren3.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewChildren3.topAnchor.constraint(equalTo: viewChildren2.bottomAnchor, constant: 16).isActive = true
        
        // image children1
        viewChildren1.addSubview(imgChild1)
        imgChild1.translatesAutoresizingMaskIntoConstraints = false
        imgChild1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild1.leadingAnchor.constraint(equalTo: viewChildren1.leadingAnchor, constant: 16).isActive = true
        imgChild1.topAnchor.constraint(equalTo: viewChildren1.topAnchor).isActive = true
        imgChild1.bottomAnchor.constraint(equalTo: viewChildren1.bottomAnchor).isActive = true
        
        // image children2
        viewChildren2.addSubview(imgChild2)
        imgChild2.translatesAutoresizingMaskIntoConstraints = false
        imgChild2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild2.leadingAnchor.constraint(equalTo: viewChildren2.leadingAnchor, constant: 16).isActive = true
        imgChild2.topAnchor.constraint(equalTo: viewChildren2.topAnchor).isActive = true
        imgChild2.bottomAnchor.constraint(equalTo: viewChildren2.bottomAnchor).isActive = true
        
        // image children1
        viewChildren3.addSubview(imgChild3)
        imgChild3.translatesAutoresizingMaskIntoConstraints = false
        imgChild3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild3.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild3.leadingAnchor.constraint(equalTo: viewChildren3.leadingAnchor, constant: 16).isActive = true
        imgChild3.topAnchor.constraint(equalTo: viewChildren3.topAnchor).isActive = true
        imgChild3.bottomAnchor.constraint(equalTo: viewChildren3.bottomAnchor).isActive = true
        
        // label name chrild1
        viewChildren1.addSubview(lbChildrenName1)
        lbChildrenName1.translatesAutoresizingMaskIntoConstraints = false
        lbChildrenName1.centerYAnchor.constraint(equalTo: viewChildren1.centerYAnchor).isActive = true
        lbChildrenName1.leadingAnchor.constraint(equalTo: imgChild1.trailingAnchor, constant: 16).isActive = true
        
        // label name chrild2
        viewChildren2.addSubview(lbChildrenName2)
        lbChildrenName2.translatesAutoresizingMaskIntoConstraints = false
        lbChildrenName2.centerYAnchor.constraint(equalTo: viewChildren2.centerYAnchor).isActive = true
        lbChildrenName2.leadingAnchor.constraint(equalTo: imgChild2.trailingAnchor, constant: 16).isActive = true
        
        // label name chrild3
        viewChildren3.addSubview(lbChildrenName3)
        lbChildrenName3.translatesAutoresizingMaskIntoConstraints = false
        lbChildrenName3.centerYAnchor.constraint(equalTo: viewChildren3.centerYAnchor).isActive = true
        lbChildrenName3.leadingAnchor.constraint(equalTo: imgChild3.trailingAnchor, constant: 16).isActive = true
        
        //switch child1
        viewChildren1.addSubview(swChild1)
        swChild1.translatesAutoresizingMaskIntoConstraints = false
        swChild1.centerYAnchor.constraint(equalTo: viewChildren1.centerYAnchor).isActive = true
        swChild1.trailingAnchor.constraint(equalTo: viewChildren1.trailingAnchor, constant: -16).isActive = true
        
        //switch child2
        viewChildren2.addSubview(swChild2)
        swChild2.translatesAutoresizingMaskIntoConstraints = false
        swChild2.centerYAnchor.constraint(equalTo: viewChildren2.centerYAnchor).isActive = true
        swChild2.trailingAnchor.constraint(equalTo: viewChildren2.trailingAnchor, constant: -16).isActive = true
        
        //switch child3
        viewChildren3.addSubview(swChild3)
        swChild3.translatesAutoresizingMaskIntoConstraints = false
        swChild3.centerYAnchor.constraint(equalTo: viewChildren3.centerYAnchor).isActive = true
        swChild3.trailingAnchor.constraint(equalTo: viewChildren3.trailingAnchor, constant: -16).isActive = true
        
    }
    
}
