//
//  UITableViewCell+RegistrationTrait.swift
//  NACommonUtils
//
//  Created by Nick Ager on 20/10/2016.
//  Copyright © 2016 Rocketbox Ltd. All rights reserved..
//

import UIKit

public protocol UITableViewCellRegistrationTrait {
    static var reuseIdentifier: String {
        get
    }
    
    static func register(tableView: UITableView, withNibName nibName: String)
    static func dequeue<TVC: UITableViewCell>(tableView: UITableView, for indexPath: IndexPath) -> TVC
}

public extension UITableViewCellRegistrationTrait {
    static func register(tableView: UITableView, withNibName nibName: String) {
        let nib = UINib(nibName: nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
    }
    
    static func dequeue<TVC: UITableViewCell>(tableView: UITableView, for indexPath: IndexPath) -> TVC {
        return tableView.dequeueReusableCell(withIdentifier:reuseIdentifier, for: indexPath) as! TVC
    }
}
