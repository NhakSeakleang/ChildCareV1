//
//  BabySitterView.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class BabySitterProfileView: UIView {
    
    var viewStatus: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
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
    
    var imgProfile: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "Babysitter")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 75
        imgView.layer.borderColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
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
    
    var imgFirstAidCheck: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "checked")
        imgView.contentMode = ContentMode.scaleToFill
        return imgView
    }()
    
    var imgCPRCheck: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "checked")
        imgView.contentMode = ContentMode.scaleToFill
        return imgView
    }()
    
    var imgComfortPetsCheck: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "checked")
        imgView.contentMode = ContentMode.scaleToFill
        return imgView
    }()
    
    var imgNonSmokerCheck: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "checked")
        imgView.contentMode = ContentMode.scaleToFill
        return imgView
    }()
    
    var lbName: UILabel = {
        let lb = UILabel()
        lb.text = "Alina Finiti"
        lb.textAlignment = .center
        lb.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        return lb
    }()
    
    var lbCity: UILabel = {
        let lb = UILabel()
        lb.text = "Phnom Penh"
        lb.textAlignment = .center
        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbStatusDot: UILabel = {
        let lb = UILabel()
        lb.text = "●"
        lb.font = UIFont.boldSystemFont(ofSize: 10)
        lb.textAlignment = .center
        lb.textColor = .green
        return lb
    }()
    
    var lbStatusText: UILabel = {
        let lb = UILabel()
        lb.text = "ONLINE"
        lb.text = lb.text?.uppercased()
        lb.font = lb.font.withSize(10)
        lb.textAlignment = .center
        lb.textColor = .gray
        return lb
    }()
    
    var lbReviews: UILabel = {
        let lb = UILabel()
        lb.text = "No Reviews"
        lb.textAlignment = .center
        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbBioTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Bio"
        lb.textColor = .gray
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        return lb
    }()
    
    var lbBio: UILabel = {
        let lb = UILabel()
        lb.text = "Hi there! I'm a babysitter with over 8 years of experience in childcare."
        lb.textColor = .gray
        lb.textAlignment = .center
        lb.numberOfLines = 0
        return lb
    }()
    
    var lbAbout: UILabel = {
        let lb = UILabel()
        lb.text = "About"
        lb.textColor = .gray
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        return lb
    }()
    
    var lbFirstAid: UILabel = {
        let lb = UILabel()
        lb.text = "First Aid Training"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
    }()
    
    var lbCPR: UILabel = {
        let lb = UILabel()
        lb.text = "CPR Training"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
    }()
    
    var lbComfortPets: UILabel = {
        let lb = UILabel()
        lb.text = "Comfortable with pets"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
    }()
    
    var lbNonSmoker: UILabel = {
        let lb = UILabel()
        lb.text = "Non-smoker"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        return lb
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
        
//        //image edit
//        addSubview(imgEditProfile)
//        imgEditProfile.translatesAutoresizingMaskIntoConstraints = false
//        imgEditProfile.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        imgEditProfile.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        imgEditProfile.centerYAnchor.constraint(equalTo: imgProfile.centerYAnchor).isActive = true
//        imgEditProfile.centerXAnchor.constraint(equalTo: imgProfile.trailingAnchor).isActive = true
        
        //label name
        addSubview(lbName)
        lbName.translatesAutoresizingMaskIntoConstraints = false
        lbName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbName.topAnchor.constraint(equalTo: imgProfile.bottomAnchor, constant: 16).isActive = true
        
        //label city
        addSubview(lbCity)
        lbCity.translatesAutoresizingMaskIntoConstraints = false
        lbCity.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbCity.topAnchor.constraint(equalTo: lbName.bottomAnchor, constant: 8).isActive = true
        
        //view status
        addSubview(viewStatus)
        viewStatus.translatesAutoresizingMaskIntoConstraints = false
        viewStatus.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewStatus.topAnchor.constraint(equalTo: lbCity.bottomAnchor, constant: 8).isActive = true
        
        //lb status dot
        viewStatus.addSubview(lbStatusDot)
        lbStatusDot.translatesAutoresizingMaskIntoConstraints = false
        lbStatusDot.leadingAnchor.constraint(equalTo: viewStatus.leadingAnchor).isActive = true
        lbStatusDot.topAnchor.constraint(equalTo: viewStatus.topAnchor).isActive = true
        lbStatusDot.bottomAnchor.constraint(equalTo: viewStatus.bottomAnchor).isActive = true
        
        //lb status text
        viewStatus.addSubview(lbStatusText)
        lbStatusText.translatesAutoresizingMaskIntoConstraints = false
        lbStatusText.leadingAnchor.constraint(equalTo: lbStatusDot.trailingAnchor, constant: 8).isActive = true
        lbStatusText.trailingAnchor.constraint(equalTo: viewStatus.trailingAnchor).isActive = true
        lbStatusText.topAnchor.constraint(equalTo: viewStatus.topAnchor).isActive = true
        lbStatusText.bottomAnchor.constraint(equalTo: viewStatus.bottomAnchor).isActive = true
        
        //view line1
        addSubview(viewLine3)
        viewLine3.translatesAutoresizingMaskIntoConstraints = false
        viewLine3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine3.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine3.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        viewLine3.topAnchor.constraint(equalTo: viewStatus.bottomAnchor, constant: 8).isActive = true
        
        //lb reviews
        addSubview(lbReviews)
        lbReviews.translatesAutoresizingMaskIntoConstraints = false
        lbReviews.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbReviews.topAnchor.constraint(equalTo: viewLine3.bottomAnchor, constant: 8).isActive = true
        
        //view line1
        addSubview(viewLine1)
        viewLine1.translatesAutoresizingMaskIntoConstraints = false
        viewLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine1.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        viewLine1.topAnchor.constraint(equalTo: lbReviews.bottomAnchor, constant: 8).isActive = true
        
        //label bio title
        addSubview(lbBioTitle)
        lbBioTitle.translatesAutoresizingMaskIntoConstraints = false
        lbBioTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbBioTitle.topAnchor.constraint(equalTo: viewLine1.bottomAnchor, constant: 16).isActive = true
        
        //label bio
        addSubview(lbBio)
        lbBio.translatesAutoresizingMaskIntoConstraints = false
        lbBio.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        lbBio.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32).isActive = true
        lbBio.topAnchor.constraint(equalTo: lbBioTitle.bottomAnchor, constant: 8).isActive = true
        
        //view line2
        addSubview(viewLine2)
        viewLine2.translatesAutoresizingMaskIntoConstraints = false
        viewLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine2.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        viewLine2.topAnchor.constraint(equalTo: lbBio.bottomAnchor, constant: 8).isActive = true
        
        //label about
        addSubview(lbAbout)
        lbAbout.translatesAutoresizingMaskIntoConstraints = false
        lbAbout.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbAbout.topAnchor.constraint(equalTo: viewLine2.bottomAnchor, constant: 16).isActive = true
        
        //image first aid check
        addSubview(imgFirstAidCheck)
        imgFirstAidCheck.translatesAutoresizingMaskIntoConstraints = false
        imgFirstAidCheck.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imgFirstAidCheck.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imgFirstAidCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        imgFirstAidCheck.topAnchor.constraint(equalTo: lbAbout.bottomAnchor, constant: 8).isActive = true
        
        //lb first aid
        addSubview(lbFirstAid)
        lbFirstAid.translatesAutoresizingMaskIntoConstraints = false
        lbFirstAid.centerYAnchor.constraint(equalTo: imgFirstAidCheck.centerYAnchor).isActive = true
        lbFirstAid.leadingAnchor.constraint(equalTo: imgFirstAidCheck.trailingAnchor, constant: 16).isActive = true
        
        //image CPR check
        addSubview(imgCPRCheck)
        imgCPRCheck.translatesAutoresizingMaskIntoConstraints = false
        imgCPRCheck.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imgCPRCheck.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imgCPRCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        imgCPRCheck.topAnchor.constraint(equalTo: imgFirstAidCheck.bottomAnchor, constant: 8).isActive = true
        
        //lb CPR
        addSubview(lbCPR)
        lbCPR.translatesAutoresizingMaskIntoConstraints = false
        lbCPR.centerYAnchor.constraint(equalTo: imgCPRCheck.centerYAnchor).isActive = true
        lbCPR.leadingAnchor.constraint(equalTo: imgCPRCheck.trailingAnchor, constant: 16).isActive = true
        
        //image comfort with pets
        addSubview(imgComfortPetsCheck)
        imgComfortPetsCheck.translatesAutoresizingMaskIntoConstraints = false
        imgComfortPetsCheck.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imgComfortPetsCheck.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imgComfortPetsCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        imgComfortPetsCheck.topAnchor.constraint(equalTo: imgCPRCheck.bottomAnchor, constant: 8).isActive = true
        
        //lb CPR
        addSubview(lbComfortPets)
        lbComfortPets.translatesAutoresizingMaskIntoConstraints = false
        lbComfortPets.centerYAnchor.constraint(equalTo: imgComfortPetsCheck.centerYAnchor).isActive = true
        lbComfortPets.leadingAnchor.constraint(equalTo: imgComfortPetsCheck.trailingAnchor, constant: 16).isActive = true
        
        //image non-smoker
        addSubview(imgNonSmokerCheck)
        imgNonSmokerCheck.translatesAutoresizingMaskIntoConstraints = false
        imgNonSmokerCheck.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imgNonSmokerCheck.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imgNonSmokerCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        imgNonSmokerCheck.topAnchor.constraint(equalTo: imgComfortPetsCheck.bottomAnchor, constant: 8).isActive = true
        
        //lb CPR
        addSubview(lbNonSmoker)
        lbNonSmoker.translatesAutoresizingMaskIntoConstraints = false
        lbNonSmoker.centerYAnchor.constraint(equalTo: imgNonSmokerCheck.centerYAnchor).isActive = true
        lbNonSmoker.leadingAnchor.constraint(equalTo: imgNonSmokerCheck.trailingAnchor, constant: 16).isActive = true
    }
    
}
