//
//  ParentsEditProfileView.swift
//  Child Care Center
//
//  Created by GIS on 8/21/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ParentsEditProfileView: UIView {
    
    var lbPersonalInfo: UILabel = {
        let lb = UILabel()
        lb.text = "Personal Information"
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
    }()
    
    var tfName: CustomTextField = {
        let tf = CustomTextField()
        tf.placeholder = "Full name"
        tf.text = "Myra Parker"
        tf.autocorrectionType = .no
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.showBottomBorder()
        return tf
    }()
    
    var tfSex: CustomTextField = {
        let img = UIImageView(image: #imageLiteral(resourceName: "ArrowDown"))
        img.image = img.image?.withRenderingMode(.alwaysTemplate)
        img.tintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        let tf = CustomTextField()
        tf.placeholder = "Sex"
        tf.text = "Female"
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.showBottomBorder()
        tf.rightViewMode = .always
        tf.rightView = img
        tf.tag = 1
        return tf
    }()
    
    var tfPhone: CustomTextField = {
        let tf = CustomTextField()
        tf.placeholder = "Phone number"
        tf.text = "+855 96 255 255"
        tf.keyboardType = UIKeyboardType.phonePad
        tf.autocorrectionType = .no
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.showBottomBorder()
        return tf
    }()
    
    var tfEmail: CustomTextField = {
        let tf = CustomTextField()
        tf.placeholder = "Email"
        tf.text = "parker@gmail.com"
        tf.keyboardType = UIKeyboardType.emailAddress
        tf.autocorrectionType = .no
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.showBottomBorder()
        return tf
    }()
    
    var tfCity: CustomTextField = {
        let tf = CustomTextField()
        tf.placeholder = "City"
        tf.text = "Phnom Penh"
        tf.autocorrectionType = .no
        tf.tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.showBottomBorder()
        return tf
    }()
    
    var btnUpdateProfile: UIButton = {
        let btn = UIButton(type: .roundedRect)
        btn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        btn.setTitle("Update profile", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    override func layoutSubviews() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        
        //label title
        addSubview(lbPersonalInfo)
        lbPersonalInfo.translatesAutoresizingMaskIntoConstraints = false
        lbPersonalInfo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbPersonalInfo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        
        //label text field name
        addSubview(tfName)
        tfName.translatesAutoresizingMaskIntoConstraints = false
        tfName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfName.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfName.heightAnchor.constraint(equalToConstant: 32).isActive = true
        tfName.topAnchor.constraint(equalTo: lbPersonalInfo.bottomAnchor, constant: 16).isActive = true
        
        //label text field sex
        addSubview(tfSex)
        tfSex.translatesAutoresizingMaskIntoConstraints = false
        tfSex.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfSex.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfSex.heightAnchor.constraint(equalToConstant: 32).isActive = true
        tfSex.topAnchor.constraint(equalTo: tfName.bottomAnchor, constant: 16).isActive = true
        
        //label text field phone
        addSubview(tfPhone)
        tfPhone.translatesAutoresizingMaskIntoConstraints = false
        tfPhone.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfPhone.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfPhone.heightAnchor.constraint(equalToConstant: 32).isActive = true
        tfPhone.topAnchor.constraint(equalTo: tfSex.bottomAnchor, constant: 16).isActive = true
        
        //label text field email
        addSubview(tfEmail)
        tfEmail.translatesAutoresizingMaskIntoConstraints = false
        tfEmail.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfEmail.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfEmail.heightAnchor.constraint(equalToConstant: 32).isActive = true
        tfEmail.topAnchor.constraint(equalTo: tfPhone.bottomAnchor, constant: 16).isActive = true
        
        //label text field city
        addSubview(tfCity)
        tfCity.translatesAutoresizingMaskIntoConstraints = false
        tfCity.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        tfCity.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        tfCity.heightAnchor.constraint(equalToConstant: 32).isActive = true
        tfCity.topAnchor.constraint(equalTo: tfEmail.bottomAnchor, constant: 16).isActive = true
        
        // button update password
        addSubview(btnUpdateProfile)
        btnUpdateProfile.translatesAutoresizingMaskIntoConstraints = false
        btnUpdateProfile.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        btnUpdateProfile.widthAnchor.constraint(equalTo: widthAnchor, constant: -64).isActive = true
        btnUpdateProfile.heightAnchor.constraint(equalToConstant: 48).isActive = true
        btnUpdateProfile.topAnchor.constraint(equalTo: tfCity.bottomAnchor, constant: 32).isActive = true
        
    }
    
}

class CustomTextField: UITextField {
    
    var bottomBorder = UIView()
    
    func showBottomBorder() {
        
        // Setup Bottom-Border
        print("set bottom line")
        self.translatesAutoresizingMaskIntoConstraints = false
        
        bottomBorder = UIView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        bottomBorder.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) // Set Border-Color
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(bottomBorder)
        
        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomBorder.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomBorder.heightAnchor.constraint(equalToConstant: 1).isActive = true // Set Border-Strength
        
    }
    
}
