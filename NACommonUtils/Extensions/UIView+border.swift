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
    public func addBorder(color: UIColor = UIColor.lightGray, width: CGFloat =  1.0 / UIScreen.main.scale) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    public func addRoundedBorder(color: UIColor = UIColor.lightGray) {
        self.layer.borderWidth = 1.5
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
    }
    
    public func addShadow() {
        self.clipsToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.2
    }
}
