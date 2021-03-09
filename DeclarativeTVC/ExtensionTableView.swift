//
//  ExtensionTableView.swift
//  DeclarativeTVC
//
//  Created by Stanislav on 09.03.2021.
//

import UIKit

extension UITableView {
    func customDequeueReusableCell<T>(withIdentifier idetifier: String, for indexPath: IndexPath, castTo: T) -> T {
        if let cell = self.dequeueReusableCell(withIdentifier: idetifier, for: indexPath) as? T {
            return cell
        } else {
            return T.self as! T
        }
    }
}
