//
//  TableViewBuilder.swift
//  DeclarativeTVC
//
//  Created by Stanislav on 09.03.2021.
//

import UIKit

struct TestModel {
    let name: String
}

class TableViewBuilder: NSObject, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView
    var sections: [TableViewSectionModel] = []
    private var model: [TestModel] = [TestModel(name: "qwe"),
                                      TestModel(name: "asd"),
                                      TestModel(name: "zxc")]
    
    init(tableView: UITableView) {
        self.tableView = tableView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return model.count
        case 1:
            return 5
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section].cells
        switch indexPath.section {
        case 0:
            let cell = tableView.customDequeueReusableCell(withIdentifier: section[indexPath.section].identifier, for: indexPath, castTo: TableViewCell())
            cell.label.text = model[indexPath.row].name
            return cell
        case 1:
            let cell = tableView.customDequeueReusableCell(withIdentifier: section[indexPath.section].identifier, for: indexPath, castTo: TableViewCell())
            cell.label.text = "Atata"
            return cell
        default: return UITableViewCell()
        }
    }
}
