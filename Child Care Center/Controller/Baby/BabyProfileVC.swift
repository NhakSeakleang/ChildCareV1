//
//  BabyProfileVC.swift
//  Child Care Center
//
//  Created by GIS on 8/20/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class BabyProfileVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }

    func setUp() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        self.tableView.register(BabyProfileView.self, forCellReuseIdentifier: "Cell")
        self.tableView.separatorStyle = .none
        self.tableView.allowsSelection = false

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BabyProfileView
        cell.tfWeight.delegate = self
        cell.tfHeight.delegate = self
        cell.tfBlood.delegate = self
        cell.tfHealth.delegate = self
        cell.tfAllergy.delegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.safeAreaLayoutGuide.layoutFrame.height
    }

}

extension BabyProfileVC: UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        let cell = self.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! BabyProfileView
        
        switch textField {
        case cell.tfWeight:
            cell.viewLineWeight.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case cell.tfHeight:
            cell.viewLineHeight.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case cell.tfBlood:
            cell.viewLineBlood.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case cell.tfHealth:
            cell.viewLineHealth.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        case cell.tfAllergy:
            cell.viewLineAllergy.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        default:
            break
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        
        let cell = self.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! BabyProfileView

        switch textField {
        case cell.tfWeight:
            cell.viewLineWeight.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        case cell.tfHeight:
            cell.viewLineHeight.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        case cell.tfBlood:
            cell.viewLineBlood.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        case cell.tfHealth:
            cell.viewLineHealth.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        case cell.tfAllergy:
            cell.viewLineAllergy.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        default:
            break
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
