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
    
    var googleMap: GMSMapView!

    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        // Google map view
        googleMap = GMSMapView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(googleMap)
    }

}
