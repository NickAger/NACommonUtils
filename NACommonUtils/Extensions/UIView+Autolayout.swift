//
//  UIView+Autolayout.swift
//  Autolayout helpers
//
//  NACommonUtils
//
//  Created by Nick Ager on 05/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit


extension UIView {
    public func useAutolayout() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

extension UIView {
    public func centerInView(superview: UIView) -> [NSLayoutConstraint] {
        var constraints = [NSLayoutConstraint(item: self, attribute:.CenterX, relatedBy:.Equal, toItem:superview, attribute:.CenterX, multiplier:1.0, constant:0)]
        constraints.append(NSLayoutConstraint(item: self, attribute:.CenterY, relatedBy:.Equal, toItem:superview, attribute:.CenterY, multiplier:1.0, constant:0))
        
        superview.addConstraints(constraints)
        return constraints
    }
    
    public func constrainToWidth(width: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .Width, relatedBy:.Equal, toItem:nil, attribute:.NotAnAttribute, multiplier:0, constant:width)
        self.addConstraint(constraint)
        return constraint
    }
    
    public func constrainToHeight(height: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .Height, relatedBy:.Equal, toItem:nil, attribute:.NotAnAttribute, multiplier:0, constant:height)
        self.addConstraint(constraint)
        return constraint
    }
}
