//
//  MenuVC.swift
//  Child Care Center
//
//  Created by GIS on 8/9/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    private let reuseIdentifer = "MenuOptionCell"
    var menuView: MenuView!
    var delegate: MainController!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    override func viewDidLayoutSubviews() {
        setUpTableView()
    }
    
    func setUpView() {
        menuView = MenuView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view = menuView
    }
    
    func setUpTableView() {
        menuView.tableView.delegate = self
        menuView.tableView.dataSource = self
        
        menuView.tableView.register(MenuCell.self, forCellReuseIdentifier: reuseIdentifer)
        
    }

}

extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuOption.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MenuCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        
        cell.iconImageView.image = menuOption?.image
        cell.descriptionLabel.text = menuOption?.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.menuToggle()
        delegate?.didSelectMenu(menuOptionSelected: MenuOption(rawValue: indexPath.row)!)
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.1)
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = .clear
    }
    
}
