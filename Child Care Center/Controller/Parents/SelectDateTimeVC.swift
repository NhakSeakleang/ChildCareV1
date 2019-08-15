//
//  SelectDateTime.swift
//  Child Care Center
//
//  Created by GIS on 8/14/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class SelectDateTimeVC: UIViewController {
    
    var selectDateTimeView: SelectDateTimeView!
    
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }()
    
    var timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    override func viewDidLayoutSubviews() {
        dateChange(selectDateTimeView.datePicker)
        timeChange(selectDateTimeView.timePicker)
    }
    
    func setUp() {
        
        selectDateTimeView = SelectDateTimeView()
        view = selectDateTimeView
        selectDateTimeView.datePicker.addTarget(self, action: #selector(dateChange(_:)), for: .valueChanged)
        selectDateTimeView.timePicker.addTarget(self, action: #selector(timeChange(_:)), for: .valueChanged)
        title = "Date & Time"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextClick))
        
    }
    
    @objc func nextClick() {
        navigationController?.pushViewController(SelectChildredVC(), animated: true)
    }
    
    @objc func dateChange(_ sender: UIDatePicker) {
        selectDateTimeView.lbDate.text = dateFormatter.string(from: sender.date)
    }
    
    @objc func timeChange(_ sender: UIDatePicker) {
        selectDateTimeView.lbTime.text = timeFormatter.string(from: sender.date)
    }

}
