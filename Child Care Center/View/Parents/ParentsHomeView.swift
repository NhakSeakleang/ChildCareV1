//
//  ParentsHomeView.swift
//  Child Care Center
//
//  Created by GIS on 8/2/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit
import GoogleMaps

class ParentsHomeView: UIView {
    
    var googleMap: GMSMapView = {
        return GMSMapView()
    }()
    
    var viewAlertFull: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        v.isHidden = true
        return v
    }()
    
    var viewAlert: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(white: 1, alpha: 1)
        v.clipsToBounds = true
        v.layer.cornerRadius = 10
        return v
    }()
    
    var lbTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Getting location"
        lb.textAlignment = .center
        return lb
    }()
    
    var lbMessage: UILabel = {
        let lb = UILabel()
        lb.text = "Please wait..."
        lb.textAlignment = .center
        lb.font = lb.font.withSize(15)
        return lb
    }()
    
    var loadingIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .gray)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.isUserInteractionEnabled = false
        indicator.startAnimating();
        return indicator
    }()

    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        // Google map view
        addSubview(googleMap)
        googleMap.translatesAutoresizingMaskIntoConstraints = false
        googleMap.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        googleMap.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        googleMap.topAnchor.constraint(equalTo: topAnchor).isActive = true
        googleMap.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        // view full
        addSubview(viewAlertFull)
        viewAlertFull.frame = frame
        
        // view alert
        viewAlertFull.addSubview(viewAlert)
        viewAlert.translatesAutoresizingMaskIntoConstraints = false
        viewAlert.centerXAnchor.constraint(equalTo: viewAlertFull.centerXAnchor).isActive = true
        viewAlert.centerYAnchor.constraint(equalTo: viewAlertFull.centerYAnchor).isActive = true
        
        // lb title
        viewAlert.addSubview(lbTitle)
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.leadingAnchor.constraint(equalTo: viewAlert.leadingAnchor, constant: 36).isActive = true
        lbTitle.trailingAnchor.constraint(equalTo: viewAlert.trailingAnchor, constant: -36).isActive = true
        lbTitle.topAnchor.constraint(equalTo: viewAlert.topAnchor, constant: 18).isActive = true
        
        // lb message
        viewAlert.addSubview(lbMessage)
        lbMessage.translatesAutoresizingMaskIntoConstraints = false
        lbMessage.centerXAnchor.constraint(equalTo: viewAlert.centerXAnchor).isActive = true
        lbMessage.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 8).isActive = true
        
        // indicator
        viewAlert.addSubview(loadingIndicator)
        loadingIndicator.translatesAutoresizingMaskIntoConstraints = false
        loadingIndicator.centerXAnchor.constraint(equalTo: viewAlert.centerXAnchor).isActive = true
        loadingIndicator.topAnchor.constraint(equalTo: lbMessage.bottomAnchor, constant: 16).isActive = true
        loadingIndicator.bottomAnchor.constraint(equalTo: viewAlert.bottomAnchor, constant: -18).isActive = true
    }
    
    func showAler(isShow: Bool) {
        if isShow {
            viewAlertFull.isHidden = false
        } else {
            viewAlertFull.isHidden = true
        }
    }

}
