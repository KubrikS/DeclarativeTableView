//
//  ViewController.swift
//  DeclarativeTVC
//
//  Created by Stanislav on 09.03.2021.
//

import UIKit

class ViewController: UIViewController {
    private var myTableView: UITableView!
    private lazy var adapter = TableViewBuilder(tableView: self.myTableView)
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        myTableView = adapter.tableView
        myTableView?.dataSource = adapter
        myTableView?.delegate = adapter
        
        let cell = TableViewCellModel(identifier: "FirstCell")
        let secondCell = TableViewCellModel(identifier: "SecondCell")
        let section = TableViewSectionModel(cells: [cell, secondCell])
        adapter.sections = [section, section]
        
        myTableView.register(TableViewCell.self, forCellReuseIdentifier: "FirstCell")
        myTableView.register(TableViewCell.self, forCellReuseIdentifier: "SecondCell")
        
        self.view.addSubview(myTableView)
        adapter.tableView.reloadData()
    }
    

}

