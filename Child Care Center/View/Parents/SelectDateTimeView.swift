//
//  SelectDateTimeView.swift
//  Child Care Center
//
//  Created by GIS on 8/14/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SelectDateTimeView: UIView {
    
    var lbDate: UILabel = {
        let lb = UILabel()
        lb.text = "Date"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var lbTime: UILabel = {
        let lb = UILabel()
        lb.text = "Time"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textAlignment = .center
        return lb
    }()
    
    var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.backgroundColor = .white
        picker.datePickerMode = .date
        return picker
    }()
    
    var timePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.backgroundColor = .white
        picker.datePickerMode = .time
        picker.locale = Locale(identifier: "en_US")
        return picker
    }()
    
    override func layoutSubviews() {
        
        backgroundColor = .white
        setUpView()
        
    }
    
    func setUpView() {
        
        // label date
        addSubview(lbDate)
        lbDate.translatesAutoresizingMaskIntoConstraints = false
        lbDate.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        lbDate.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // date picker
        addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        datePicker.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        datePicker.topAnchor.constraint(equalTo: lbDate.bottomAnchor, constant: 32).isActive = true
        
        // label time
        addSubview(lbTime)
        lbTime.translatesAutoresizingMaskIntoConstraints = false
        lbTime.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 16).isActive = true
        lbTime.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // time picker
        addSubview(timePicker)
        timePicker.translatesAutoresizingMaskIntoConstraints = false
        timePicker.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        timePicker.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        timePicker.topAnchor.constraint(equalTo: lbTime.bottomAnchor, constant: 32).isActive = true
        
    }
    
}
