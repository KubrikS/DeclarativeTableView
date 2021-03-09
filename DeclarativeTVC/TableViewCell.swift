//
//  TableViewCell.swift
//  DeclarativeTVC
//
//  Created by Stanislav on 09.03.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    lazy var label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 0, width: 200, height: 40)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .systemOrange
        self.addSubview(label)
        return label
    }()
}
