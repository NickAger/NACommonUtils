//
//  UIView+border.swift
//
//  NACommonUtils
//
//  Created by Nick Ager on 11/05/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit

extension UIView {
    func addBorder() {
        layer.borderColor = UIColor.lightGrayColor().CGColor
        layer.borderWidth = 1.0 / UIScreen.mainScreen().scale
    }
}
