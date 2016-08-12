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
    public func addBorder(color: UIColor = UIColor.lightGrayColor()) {
        layer.borderColor = color.CGColor
        layer.borderWidth = 1.0 / UIScreen.mainScreen().scale
    }
    
    public func addShadow() {
        self.clipsToBounds = false
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.2
    }
}
