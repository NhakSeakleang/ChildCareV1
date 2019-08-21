//
//  BabyProfileView.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class BabyProfileView: UIView {
    
    var imgProfile: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child1")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 75
        imgView.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgEditProfile: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "EditWhite")
        imgView.contentMode = ContentMode.scaleToFill
        imgView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        imgView.layer.cornerRadius = 25
        imgView.layer.borderColor = UIColor.white.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var lbName: UILabel = {
        let lb = UILabel()
        lb.text = "Emma"
        lb.textAlignment = .center
        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        return lb
    }()
    
    var lbOld: UILabel = {
        let lb = UILabel()
        lb.text = "2 Months old"
        lb.textAlignment = .center
        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbWeightTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Weight:"
        lb.font = lb.font.withSize(15)
//        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbWeight: UILabel = {
        let lb = UILabel()
        lb.text = "7.3kg"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return lb
    }()
    
    var lbHeightTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Height:"
        lb.font = lb.font.withSize(15)
//        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbHeight: UILabel = {
        let lb = UILabel()
        lb.text = "65cm"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return lb
    }()
    
    var lbBloodTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Blood group:"
        lb.font = lb.font.withSize(15)
//        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbBlood: UILabel = {
        let lb = UILabel()
        lb.text = "O+"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = #colorLiteral(red: 0.6509803922, green: 0.06274509804, blue: 0.1176470588, alpha: 1)
        return lb
    }()
    
    var lbHealthTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Health condition:"
        lb.font = lb.font.withSize(15)
//        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbHealth: UILabel = {
        let lb = UILabel()
        lb.text = "Excellent"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.numberOfLines = 0
        lb.textAlignment = NSTextAlignment.justified
        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return lb
    }()
    
    var lbAllergyTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Allergy:"
        lb.font = lb.font.withSize(15)
//        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbAllergy: UILabel = {
        let lb = UILabel()
        lb.text = "Shellfish (like crab, lobster, and shrimp)"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.numberOfLines = 0
        lb.textAlignment = NSTextAlignment.justified
        lb.textColor = #colorLiteral(red: 0.7333333333, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
        return lb
    }()
    
    var viewLine1: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLine2: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLine3: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLine4: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLine5: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    override func layoutSubviews() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        //image profile
        addSubview(imgProfile)
        imgProfile.translatesAutoresizingMaskIntoConstraints = false
        imgProfile.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imgProfile.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imgProfile.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imgProfile.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        
        //image edit
        addSubview(imgEditProfile)
        imgEditProfile.translatesAutoresizingMaskIntoConstraints = false
        imgEditProfile.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imgEditProfile.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgEditProfile.centerYAnchor.constraint(equalTo: imgProfile.centerYAnchor).isActive = true
        imgEditProfile.centerXAnchor.constraint(equalTo: imgProfile.trailingAnchor).isActive = true
        
        //label name
        addSubview(lbName)
        lbName.translatesAutoresizingMaskIntoConstraints = false
        lbName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbName.topAnchor.constraint(equalTo: imgProfile.bottomAnchor, constant: 16).isActive = true
        
        //label old
        addSubview(lbOld)
        lbOld.translatesAutoresizingMaskIntoConstraints = false
        lbOld.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbOld.topAnchor.constraint(equalTo: lbName.bottomAnchor, constant: 8).isActive = true
        
        //lb  weight title
        addSubview(lbWeightTitle)
        lbWeightTitle.translatesAutoresizingMaskIntoConstraints = false
        lbWeightTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbWeightTitle.topAnchor.constraint(equalTo: lbOld.bottomAnchor, constant: 16).isActive = true
        
        //lb weight
        addSubview(lbWeight)
        lbWeight.translatesAutoresizingMaskIntoConstraints = false
        lbWeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbWeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lbWeight.topAnchor.constraint(equalTo: lbWeightTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line1
        addSubview(viewLine1)
        viewLine1.translatesAutoresizingMaskIntoConstraints = false
        viewLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine1.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
        viewLine1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine1.topAnchor.constraint(equalTo: lbWeight.bottomAnchor, constant: 4).isActive = true
        
        //lb  height title
        addSubview(lbHeightTitle)
        lbHeightTitle.translatesAutoresizingMaskIntoConstraints = false
        lbHeightTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbHeightTitle.topAnchor.constraint(equalTo: viewLine1.bottomAnchor, constant: 12).isActive = true
        
        //lb height
        addSubview(lbHeight)
        lbHeight.translatesAutoresizingMaskIntoConstraints = false
        lbHeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbHeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lbHeight.topAnchor.constraint(equalTo: lbHeightTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line2
        addSubview(viewLine2)
        viewLine2.translatesAutoresizingMaskIntoConstraints = false
        viewLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine2.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
        viewLine2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine2.topAnchor.constraint(equalTo: lbHeight.bottomAnchor, constant: 4).isActive = true
        
        //lb  blood title
        addSubview(lbBloodTitle)
        lbBloodTitle.translatesAutoresizingMaskIntoConstraints = false
        lbBloodTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbBloodTitle.topAnchor.constraint(equalTo: viewLine2.bottomAnchor, constant: 12).isActive = true
        
        //lb blood
        addSubview(lbBlood)
        lbBlood.translatesAutoresizingMaskIntoConstraints = false
        lbBlood.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbBlood.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lbBlood.topAnchor.constraint(equalTo: lbBloodTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line3
        addSubview(viewLine3)
        viewLine3.translatesAutoresizingMaskIntoConstraints = false
        viewLine3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine3.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
        viewLine3.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine3.topAnchor.constraint(equalTo: lbBlood.bottomAnchor, constant: 4).isActive = true
        
        //lb  health title
        addSubview(lbHealthTitle)
        lbHealthTitle.translatesAutoresizingMaskIntoConstraints = false
        lbHealthTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbHealthTitle.topAnchor.constraint(equalTo: viewLine3.bottomAnchor, constant: 12).isActive = true
        
        //lb health
        addSubview(lbHealth)
        lbHealth.translatesAutoresizingMaskIntoConstraints = false
        lbHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lbHealth.topAnchor.constraint(equalTo: lbHealthTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line4
        addSubview(viewLine4)
        viewLine4.translatesAutoresizingMaskIntoConstraints = false
        viewLine4.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine4.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
        viewLine4.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine4.topAnchor.constraint(equalTo: lbHealth.bottomAnchor, constant: 4).isActive = true
        
        //lb  allergy title
        addSubview(lbAllergyTitle)
        lbAllergyTitle.translatesAutoresizingMaskIntoConstraints = false
        lbAllergyTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbAllergyTitle.topAnchor.constraint(equalTo: viewLine4.bottomAnchor, constant: 12).isActive = true
        
        //lb allergy
        addSubview(lbAllergy)
        lbAllergy.translatesAutoresizingMaskIntoConstraints = false
        lbAllergy.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbAllergy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        lbAllergy.topAnchor.constraint(equalTo: lbAllergyTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line5
        addSubview(viewLine5)
        viewLine5.translatesAutoresizingMaskIntoConstraints = false
        viewLine5.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine5.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
        viewLine5.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine5.topAnchor.constraint(equalTo: lbAllergy.bottomAnchor, constant: 4).isActive = true
    }
    
}
