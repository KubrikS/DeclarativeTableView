//
//  TableViewCellModel.swift
//  DeclarativeTVC
//
//  Created by Stanislav on 09.03.2021.
//

import Foundation

class TableViewCellModel {
    let identifier: String
    let cell: TableViewCell
    
    init(identifier: String) {
        self.identifier = identifier
        cell = TableViewCell(style: .default, reuseIdentifier: identifier)
    }
}
