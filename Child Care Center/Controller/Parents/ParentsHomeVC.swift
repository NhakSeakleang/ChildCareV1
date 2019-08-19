//
//  ParentsHomeVC.swift
//  Child Care Center
//
//  Created by GIS on 8/2/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit
import GoogleMaps

class ParentsHomeVC: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate {
    
    var parentsHomeView: ParentsHomeView!
    var locationManager: CLLocationManager!
    var delegate: MainController!
    var loadingAlert: UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        requestLocation()
    }
    
    func setUp() {
        setUpNavigation()
        setUpLoadingIndicator()
        parentsHomeView = ParentsHomeView()
        view = parentsHomeView
    }
    
    override func viewDidLayoutSubviews() {
//        requestLocation()
    }
    
    func setUpNavigation() {
        title = "Map"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(toggleMenu))
    }
    
    func setUpLoadingIndicator() {
        let loadingIndicator = UIActivityIndicatorView(style: .gray)
        loadingIndicator.translatesAutoresizingMaskIntoConstraints = false
        loadingIndicator.isUserInteractionEnabled = false
        loadingIndicator.startAnimating();
        
        loadingAlert = UIAlertController(title: "Getting location", message: "Please wait...", preferredStyle: .alert)
        loadingAlert.view.translatesAutoresizingMaskIntoConstraints = false
        loadingAlert.view.heightAnchor.constraint(equalToConstant: 110).isActive = true
        loadingAlert.view.addSubview(loadingIndicator)
        
        loadingIndicator.centerXAnchor.constraint(equalTo: loadingAlert.view.centerXAnchor).isActive = true
        loadingIndicator.bottomAnchor.constraint(equalTo: loadingAlert.view.bottomAnchor, constant: -20).isActive = true
    }
    
    @objc func toggleMenu() {
        delegate?.menuToggle()
    }
    
    func requestLocation() {
        parentsHomeView.showAler(isShow: true)
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        //uncomment to show loading alert
//        self.present(loadingAlert, animated: true, completion: nil)
    }
    
    func setUpMarker(lat: Double, long: Double) {
        for i in 1...3 {
            let customMarker = CustomMarkerView(image: #imageLiteral(resourceName: "ChildCareIcon"), borderColor: .lightGray, tag: i)
            let marker = GMSMarker()
            marker.iconView = customMarker
            switch i {
                case 1:
                    marker.position = CLLocationCoordinate2DMake(lat + 0.003, long + 0.003)
                    break
                case 2:
                    marker.position = CLLocationCoordinate2DMake(lat + 0.005, long - 0.005)
                    break
                case 3:
                    marker.position = CLLocationCoordinate2DMake(lat - 0.004, long - 0.001)
                    break
                default:
                    break
            }
            marker.map = parentsHomeView.googleMap
        }
    }
    
    // CLLocationManager Delegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Location Update!")
//        loadingAlert.dismiss(animated: true, completion: nil)
        parentsHomeView.showAler(isShow: false)
        let target = (locations.last?.coordinate)!
        let camera  = GMSCameraPosition.camera(withTarget: target, zoom: 15.0)
        parentsHomeView.googleMap.camera = camera
        parentsHomeView.googleMap.isMyLocationEnabled = true
        parentsHomeView.googleMap.settings.myLocationButton = true
        parentsHomeView.googleMap.settings.compassButton = true
        parentsHomeView.googleMap.delegate = self
        setUpMarker(lat: target.latitude, long: target.longitude)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while getting location: \(error)")
    }
    
    // GoogleMap Delegate
    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
        print("Show marker info")
        let width = view.frame.width * 0.7
        let preview = CustomMarkerPreview(width: width)
        return preview
    }
    
    
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        print("open detail")
        navigationController?.pushViewController(DetailVC(), animated: true)
    }

}
