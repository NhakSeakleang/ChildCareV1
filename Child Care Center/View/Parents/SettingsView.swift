//
//  SettingsView.swift
//  Child Care Center
//
//  Created by GIS on 8/14/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SettingsView: UIView {
    
    var viewEditProfile: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var viewChangePWD: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var viewChangeLang: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var viewReceiveNotification: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var lbEditProfile: UILabel = {
        let lb = UILabel()
        lb.text = "Edit Profile"
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChangePWD: UILabel = {
        let lb = UILabel()
        lb.text = "Change password"
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChngeLang: UILabel = {
        let lb = UILabel()
        lb.text = "Change language"
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbReceiveNotification: UILabel = {
        let lb = UILabel()
        lb.text = "Receive notification"
        lb.textAlignment = .center
        lb.textColor = .gray
        return lb
    }()
    
    var lbEditProfileEnd: UILabel = {
        let lb = UILabel()
        lb.text = ">"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChangePWDEnd: UILabel = {
        let lb = UILabel()
        lb.text = ">"
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbChangeLangEnd: UILabel = {
        let lb = UILabel()
        lb.text = ">"
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        lb.textAlignment = .center
        return lb
    }()
    
    var swRececeiveNotification: UISwitch = {
        let sw = UISwitch()
        sw.isOn = true
        return sw
    }()
    
    
    override func layoutSubviews() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        
        //view edit profile
        addSubview(viewEditProfile)
        viewEditProfile.translatesAutoresizingMaskIntoConstraints = false
        viewEditProfile.heightAnchor.constraint(equalToConstant: 65).isActive = true
        viewEditProfile.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewEditProfile.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewEditProfile.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        
        //view change password
        addSubview(viewChangePWD)
        viewChangePWD.translatesAutoresizingMaskIntoConstraints = false
        viewChangePWD.heightAnchor.constraint(equalToConstant: 65).isActive = true
        viewChangePWD.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewChangePWD.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewChangePWD.topAnchor.constraint(equalTo: viewEditProfile.bottomAnchor).isActive = true
        
        //view change language
        addSubview(viewChangeLang)
        viewChangeLang.translatesAutoresizingMaskIntoConstraints = false
        viewChangeLang.heightAnchor.constraint(equalToConstant: 65).isActive = true
        viewChangeLang.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewChangeLang.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewChangeLang.topAnchor.constraint(equalTo: viewChangePWD.bottomAnchor).isActive = true
        
        //view receceive notification
        addSubview(viewReceiveNotification)
        viewReceiveNotification.translatesAutoresizingMaskIntoConstraints = false
        viewReceiveNotification.heightAnchor.constraint(equalToConstant: 65).isActive = true
        viewReceiveNotification.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewReceiveNotification.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewReceiveNotification.topAnchor.constraint(equalTo: viewChangeLang.bottomAnchor).isActive = true
        
        //label edit profile
        viewEditProfile.addSubview(lbEditProfile)
        lbEditProfile.translatesAutoresizingMaskIntoConstraints = false
        lbEditProfile.centerYAnchor.constraint(equalTo: viewEditProfile.centerYAnchor).isActive = true
        lbEditProfile.leadingAnchor.constraint(equalTo: viewEditProfile.leadingAnchor, constant: 16).isActive = true
        
        //label change password
        viewChangePWD.addSubview(lbChangePWD)
        lbChangePWD.translatesAutoresizingMaskIntoConstraints = false
        lbChangePWD.centerYAnchor.constraint(equalTo: viewChangePWD.centerYAnchor).isActive = true
        lbChangePWD.leadingAnchor.constraint(equalTo: viewChangePWD.leadingAnchor, constant: 16).isActive = true
        
        //label change language
        viewChangeLang.addSubview(lbChngeLang)
        lbChngeLang.translatesAutoresizingMaskIntoConstraints = false
        lbChngeLang.centerYAnchor.constraint(equalTo: viewChangeLang.centerYAnchor).isActive = true
        lbChngeLang.leadingAnchor.constraint(equalTo: viewChangeLang.leadingAnchor, constant: 16).isActive = true
        
        //label receceive notification
        viewReceiveNotification.addSubview(lbReceiveNotification)
        lbReceiveNotification.translatesAutoresizingMaskIntoConstraints = false
        lbReceiveNotification.centerYAnchor.constraint(equalTo: viewReceiveNotification.centerYAnchor).isActive = true
        lbReceiveNotification.leadingAnchor.constraint(equalTo: viewReceiveNotification.leadingAnchor, constant: 16).isActive = true
        
        //label edit profile end
        viewEditProfile.addSubview(lbEditProfileEnd)
        lbEditProfileEnd.translatesAutoresizingMaskIntoConstraints = false
        lbEditProfileEnd.centerYAnchor.constraint(equalTo: viewEditProfile.centerYAnchor).isActive = true
        lbEditProfileEnd.trailingAnchor.constraint(equalTo: viewEditProfile.trailingAnchor, constant: -32).isActive = true
        
        //label change password end
        viewChangePWD.addSubview(lbChangePWDEnd)
        lbChangePWDEnd.translatesAutoresizingMaskIntoConstraints = false
        lbChangePWDEnd.centerYAnchor.constraint(equalTo: viewChangePWD.centerYAnchor).isActive = true
        lbChangePWDEnd.trailingAnchor.constraint(equalTo: viewChangePWD.trailingAnchor, constant: -32).isActive = true
        
        //label change language end
        viewChangeLang.addSubview(lbChangeLangEnd)
        lbChangeLangEnd.translatesAutoresizingMaskIntoConstraints = false
        lbChangeLangEnd.centerYAnchor.constraint(equalTo: viewChangeLang.centerYAnchor).isActive = true
        lbChangeLangEnd.trailingAnchor.constraint(equalTo: viewChangeLang.trailingAnchor, constant: -32).isActive = true
        
        //switch receceive notification
        viewReceiveNotification.addSubview(swRececeiveNotification)
        swRececeiveNotification.translatesAutoresizingMaskIntoConstraints = false
        swRececeiveNotification.centerYAnchor.constraint(equalTo: viewReceiveNotification.centerYAnchor).isActive = true
        swRececeiveNotification.trailingAnchor.constraint(equalTo: viewReceiveNotification.trailingAnchor, constant: -32).isActive = true
        
    }
    
}
