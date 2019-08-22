//
//  BabyProfileView.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class BabyProfileView: UITableViewCell {
    
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
        return lb
    }()
    
    var tfWeight: UITextField = {
        let tf = UITextField()
        tf.text = "7.3kg"
        tf.font = UIFont.boldSystemFont(ofSize: 20)
        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tag = 1
        return tf
    }()
    
    var lbHeightTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Height:"
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var tfHeight: UITextField = {
        let tf = UITextField()
        tf.text = "65cm"
        tf.font = UIFont.boldSystemFont(ofSize: 20)
        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tag = 2
        return tf
    }()
    
    var lbBloodTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Blood group:"
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var tfBlood: UITextField = {
        let tf = UITextField()
        tf.text = "O+"
        tf.font = UIFont.boldSystemFont(ofSize: 20)
        tf.textColor = #colorLiteral(red: 0.6509803922, green: 0.06274509804, blue: 0.1176470588, alpha: 1)
        tf.tag = 3
        return tf
    }()
    
    var lbHealthTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Health condition:"
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var tfHealth: UITextField = {
        let tf = UITextField()
        tf.text = "Excellent"
        tf.font = UIFont.boldSystemFont(ofSize: 20)
        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        tf.tag = 4
        return tf
    }()
    
    var lbAllergyTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Allergy:"
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var tfAllergy: UITextField = {
        let tf = UITextField()
        tf.text = "Shellfish (like crab, lobster, and shrimp)"
        tf.font = UIFont.boldSystemFont(ofSize: 20)
        tf.textAlignment = NSTextAlignment.justified
        tf.textColor = #colorLiteral(red: 0.7333333333, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
        tf.tag = 5
        return tf
    }()
    
    var viewLineWeight: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLineHeight: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLineBlood: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLineHealth: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewLineAllergy: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func layoutSubviews() {
//        backgroundColor = .white
//        setUpView()
//    }
    
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
        addSubview(tfWeight)
        tfWeight.translatesAutoresizingMaskIntoConstraints = false
        tfWeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        tfWeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        tfWeight.topAnchor.constraint(equalTo: lbWeightTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line1
        addSubview(viewLineWeight)
        viewLineWeight.translatesAutoresizingMaskIntoConstraints = false
        viewLineWeight.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLineWeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        viewLineWeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewLineWeight.topAnchor.constraint(equalTo: tfWeight.bottomAnchor, constant: 4).isActive = true
        
        //lb  height title
        addSubview(lbHeightTitle)
        lbHeightTitle.translatesAutoresizingMaskIntoConstraints = false
        lbHeightTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbHeightTitle.topAnchor.constraint(equalTo: viewLineWeight.bottomAnchor, constant: 12).isActive = true
        
        //lb height
        addSubview(tfHeight)
        tfHeight.translatesAutoresizingMaskIntoConstraints = false
        tfHeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        tfHeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        tfHeight.topAnchor.constraint(equalTo: lbHeightTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line2
        addSubview(viewLineHeight)
        viewLineHeight.translatesAutoresizingMaskIntoConstraints = false
        viewLineHeight.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLineHeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        viewLineHeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewLineHeight.topAnchor.constraint(equalTo: tfHeight.bottomAnchor, constant: 4).isActive = true
        
        //lb  blood title
        addSubview(lbBloodTitle)
        lbBloodTitle.translatesAutoresizingMaskIntoConstraints = false
        lbBloodTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbBloodTitle.topAnchor.constraint(equalTo: viewLineHeight.bottomAnchor, constant: 12).isActive = true
        
        //lb blood
        addSubview(tfBlood)
        tfBlood.translatesAutoresizingMaskIntoConstraints = false
        tfBlood.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        tfBlood.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        tfBlood.topAnchor.constraint(equalTo: lbBloodTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line3
        addSubview(viewLineBlood)
        viewLineBlood.translatesAutoresizingMaskIntoConstraints = false
        viewLineBlood.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLineBlood.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        viewLineBlood.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewLineBlood.topAnchor.constraint(equalTo: tfBlood.bottomAnchor, constant: 4).isActive = true
        
        //lb  health title
        addSubview(lbHealthTitle)
        lbHealthTitle.translatesAutoresizingMaskIntoConstraints = false
        lbHealthTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbHealthTitle.topAnchor.constraint(equalTo: viewLineBlood.bottomAnchor, constant: 12).isActive = true
        
        //lb health
        addSubview(tfHealth)
        tfHealth.translatesAutoresizingMaskIntoConstraints = false
        tfHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        tfHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        tfHealth.topAnchor.constraint(equalTo: lbHealthTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line4
        addSubview(viewLineHealth)
        viewLineHealth.translatesAutoresizingMaskIntoConstraints = false
        viewLineHealth.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLineHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        viewLineHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewLineHealth.topAnchor.constraint(equalTo: tfHealth.bottomAnchor, constant: 4).isActive = true
        
        //lb  allergy title
        addSubview(lbAllergyTitle)
        lbAllergyTitle.translatesAutoresizingMaskIntoConstraints = false
        lbAllergyTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        lbAllergyTitle.topAnchor.constraint(equalTo: viewLineHealth.bottomAnchor, constant: 12).isActive = true
        
        //lb allergy
        addSubview(tfAllergy)
        tfAllergy.translatesAutoresizingMaskIntoConstraints = false
        tfAllergy.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        tfAllergy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        tfAllergy.topAnchor.constraint(equalTo: lbAllergyTitle.bottomAnchor, constant: 4).isActive = true
        
        //view line5
        addSubview(viewLineAllergy)
        viewLineAllergy.translatesAutoresizingMaskIntoConstraints = false
        viewLineAllergy.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLineAllergy.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        viewLineAllergy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewLineAllergy.topAnchor.constraint(equalTo: tfAllergy.bottomAnchor, constant: 4).isActive = true
    }
    
}

//class BabyProfileView: UIView {
//
//    var imgProfile: UIImageView = {
//        let imgView = UIImageView()
//        imgView.image = #imageLiteral(resourceName: "child1")
//        imgView.contentMode = ContentMode.scaleAspectFill
//        imgView.backgroundColor = .lightGray
//        imgView.layer.cornerRadius = 75
//        imgView.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).cgColor
//        imgView.layer.borderWidth = 2
//        imgView.clipsToBounds = true
//        return imgView
//    }()
//
//    var imgEditProfile: UIImageView = {
//        let imgView = UIImageView()
//        imgView.image = #imageLiteral(resourceName: "EditWhite")
//        imgView.contentMode = ContentMode.scaleToFill
//        imgView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        imgView.layer.cornerRadius = 25
//        imgView.layer.borderColor = UIColor.white.cgColor
//        imgView.layer.borderWidth = 2
//        imgView.clipsToBounds = true
//        return imgView
//    }()
//
//    var lbName: UILabel = {
//        let lb = UILabel()
//        lb.text = "Emma"
//        lb.textAlignment = .center
//        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        lb.font = UIFont.boldSystemFont(ofSize: 28)
//        return lb
//    }()
//
//    var lbOld: UILabel = {
//        let lb = UILabel()
//        lb.text = "2 Months old"
//        lb.textAlignment = .center
//        lb.textColor = UIColor.lightGray
//        return lb
//    }()
//
//    var lbWeightTitle: UILabel = {
//        let lb = UILabel()
//        lb.text = "Weight:"
//        lb.font = lb.font.withSize(15)
//        return lb
//    }()
//
//    var tfWeight: UITextField = {
//        let tf = UITextField()
//        tf.text = "7.3kg"
//        tf.font = UIFont.boldSystemFont(ofSize: 20)
//        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        return tf
//    }()
//
//    var lbHeightTitle: UILabel = {
//        let lb = UILabel()
//        lb.text = "Height:"
//        lb.font = lb.font.withSize(15)
//        return lb
//    }()
//
//    var tfHeight: UITextField = {
//        let tf = UITextField()
//        tf.text = "65cm"
//        tf.font = UIFont.boldSystemFont(ofSize: 20)
//        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        return tf
//    }()
//
//    var lbBloodTitle: UILabel = {
//        let lb = UILabel()
//        lb.text = "Blood group:"
//        lb.font = lb.font.withSize(15)
//        return lb
//    }()
//
//    var tfBlood: UITextField = {
//        let tf = UITextField()
//        tf.text = "O+"
//        tf.font = UIFont.boldSystemFont(ofSize: 20)
//        tf.textColor = #colorLiteral(red: 0.6509803922, green: 0.06274509804, blue: 0.1176470588, alpha: 1)
//        return tf
//    }()
//
//    var lbHealthTitle: UILabel = {
//        let lb = UILabel()
//        lb.text = "Health condition:"
//        lb.font = lb.font.withSize(15)
//        return lb
//    }()
//
//    var tfHealth: UITextField = {
//        let tf = UITextField()
//        tf.text = "Excellent"
//        tf.font = UIFont.boldSystemFont(ofSize: 20)
//        tf.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        return tf
//    }()
//
//    var lbAllergyTitle: UILabel = {
//        let lb = UILabel()
//        lb.text = "Allergy:"
//        lb.font = lb.font.withSize(15)
//        return lb
//    }()
//
//    var tfAllergy: UITextField = {
//        let tf = UITextField()
//        tf.text = "Shellfish (like crab, lobster, and shrimp)"
//        tf.font = UIFont.boldSystemFont(ofSize: 20)
//        tf.textAlignment = NSTextAlignment.justified
//        tf.textColor = #colorLiteral(red: 0.7333333333, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
//        return tf
//    }()
//
//    var viewLineWeight: UIView = {
//        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        return v
//    }()
//
//    var viewLineHeight: UIView = {
//        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        return v
//    }()
//
//    var viewLineBlood: UIView = {
//        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        return v
//    }()
//
//    var viewLineHealth: UIView = {
//        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        return v
//    }()
//
//    var viewLineAllergy: UIView = {
//        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        return v
//    }()
//
//    override func layoutSubviews() {
//        backgroundColor = .white
//        setUpView()
//    }
//
//    func setUpView() {
//        //image profile
//        addSubview(imgProfile)
//        imgProfile.translatesAutoresizingMaskIntoConstraints = false
//        imgProfile.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        imgProfile.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        imgProfile.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        imgProfile.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
//
//        //image edit
//        addSubview(imgEditProfile)
//        imgEditProfile.translatesAutoresizingMaskIntoConstraints = false
//        imgEditProfile.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        imgEditProfile.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        imgEditProfile.centerYAnchor.constraint(equalTo: imgProfile.centerYAnchor).isActive = true
//        imgEditProfile.centerXAnchor.constraint(equalTo: imgProfile.trailingAnchor).isActive = true
//
//        //label name
//        addSubview(lbName)
//        lbName.translatesAutoresizingMaskIntoConstraints = false
//        lbName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        lbName.topAnchor.constraint(equalTo: imgProfile.bottomAnchor, constant: 16).isActive = true
//
//        //label old
//        addSubview(lbOld)
//        lbOld.translatesAutoresizingMaskIntoConstraints = false
//        lbOld.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        lbOld.topAnchor.constraint(equalTo: lbName.bottomAnchor, constant: 8).isActive = true
//
//        //lb  weight title
//        addSubview(lbWeightTitle)
//        lbWeightTitle.translatesAutoresizingMaskIntoConstraints = false
//        lbWeightTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
//        lbWeightTitle.topAnchor.constraint(equalTo: lbOld.bottomAnchor, constant: 16).isActive = true
//
//        //lb weight
//        addSubview(tfWeight)
//        tfWeight.translatesAutoresizingMaskIntoConstraints = false
//        tfWeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
//        tfWeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
//        tfWeight.topAnchor.constraint(equalTo: lbWeightTitle.bottomAnchor, constant: 4).isActive = true
//
//        //view line1
//        addSubview(viewLineWeight)
//        viewLineWeight.translatesAutoresizingMaskIntoConstraints = false
//        viewLineWeight.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        viewLineWeight.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
//        viewLineWeight.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewLineWeight.topAnchor.constraint(equalTo: tfWeight.bottomAnchor, constant: 4).isActive = true
//
//        //lb  height title
//        addSubview(lbHeightTitle)
//        lbHeightTitle.translatesAutoresizingMaskIntoConstraints = false
//        lbHeightTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
//        lbHeightTitle.topAnchor.constraint(equalTo: viewLineWeight.bottomAnchor, constant: 12).isActive = true
//
//        //lb height
//        addSubview(tfHeight)
//        tfHeight.translatesAutoresizingMaskIntoConstraints = false
//        tfHeight.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
//        tfHeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
//        tfHeight.topAnchor.constraint(equalTo: lbHeightTitle.bottomAnchor, constant: 4).isActive = true
//
//        //view line2
//        addSubview(viewLineHeight)
//        viewLineHeight.translatesAutoresizingMaskIntoConstraints = false
//        viewLineHeight.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        viewLineHeight.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
//        viewLineHeight.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewLineHeight.topAnchor.constraint(equalTo: tfHeight.bottomAnchor, constant: 4).isActive = true
//
//        //lb  blood title
//        addSubview(lbBloodTitle)
//        lbBloodTitle.translatesAutoresizingMaskIntoConstraints = false
//        lbBloodTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
//        lbBloodTitle.topAnchor.constraint(equalTo: viewLineHeight.bottomAnchor, constant: 12).isActive = true
//
//        //lb blood
//        addSubview(tfBlood)
//        tfBlood.translatesAutoresizingMaskIntoConstraints = false
//        tfBlood.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
//        tfBlood.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
//        tfBlood.topAnchor.constraint(equalTo: lbBloodTitle.bottomAnchor, constant: 4).isActive = true
//
//        //view line3
//        addSubview(viewLineBlood)
//        viewLineBlood.translatesAutoresizingMaskIntoConstraints = false
//        viewLineBlood.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        viewLineBlood.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
//        viewLineBlood.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewLineBlood.topAnchor.constraint(equalTo: tfBlood.bottomAnchor, constant: 4).isActive = true
//
//        //lb  health title
//        addSubview(lbHealthTitle)
//        lbHealthTitle.translatesAutoresizingMaskIntoConstraints = false
//        lbHealthTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
//        lbHealthTitle.topAnchor.constraint(equalTo: viewLineBlood.bottomAnchor, constant: 12).isActive = true
//
//        //lb health
//        addSubview(tfHealth)
//        tfHealth.translatesAutoresizingMaskIntoConstraints = false
//        tfHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
//        tfHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
//        tfHealth.topAnchor.constraint(equalTo: lbHealthTitle.bottomAnchor, constant: 4).isActive = true
//
//        //view line4
//        addSubview(viewLineHealth)
//        viewLineHealth.translatesAutoresizingMaskIntoConstraints = false
//        viewLineHealth.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        viewLineHealth.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
//        viewLineHealth.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewLineHealth.topAnchor.constraint(equalTo: tfHealth.bottomAnchor, constant: 4).isActive = true
//
//        //lb  allergy title
//        addSubview(lbAllergyTitle)
//        lbAllergyTitle.translatesAutoresizingMaskIntoConstraints = false
//        lbAllergyTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
//        lbAllergyTitle.topAnchor.constraint(equalTo: viewLineHealth.bottomAnchor, constant: 12).isActive = true
//
//        //lb allergy
//        addSubview(tfAllergy)
//        tfAllergy.translatesAutoresizingMaskIntoConstraints = false
//        tfAllergy.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
//        tfAllergy.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
//        tfAllergy.topAnchor.constraint(equalTo: lbAllergyTitle.bottomAnchor, constant: 4).isActive = true
//
//        //view line5
//        addSubview(viewLineAllergy)
//        viewLineAllergy.translatesAutoresizingMaskIntoConstraints = false
//        viewLineAllergy.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        viewLineAllergy.widthAnchor.constraint(equalToConstant: frame.width - 32).isActive = true
//        viewLineAllergy.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewLineAllergy.topAnchor.constraint(equalTo: tfAllergy.bottomAnchor, constant: 4).isActive = true
//    }
//
//}
