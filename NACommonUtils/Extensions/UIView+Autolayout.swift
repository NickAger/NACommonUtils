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
    /**
     Declare that a `UIView` based component is using auto-layout.
     
     - Returns: `Self` - designed as a fluid API eg: 
     `let label = UILabel().useAutolayout()`
     */
    public func useAutolayout() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

extension UIView {
    /**
     Adds the `NSLayoutConstraint` for centering a view in a superview. The 
     constraints are added to the specified superview.
     
     - Parameter superview: the view to be centered within.
     
     - Returns: The array of associated `NSLayoutConstraint`
     */
    public func centerInView(superview: UIView) -> [NSLayoutConstraint] {
        var constraints = [NSLayoutConstraint(item: self, attribute:.CenterX, relatedBy:.Equal, toItem:superview, attribute:.CenterX, multiplier:1.0, constant:0)]
        constraints.append(NSLayoutConstraint(item: self, attribute:.CenterY, relatedBy:.Equal, toItem:superview, attribute:.CenterY, multiplier:1.0, constant:0))
        
        superview.addConstraints(constraints)
        return constraints
    }
    
    /**
     Adds the `NSLayoutConstraint` for constraining a view to a specified width.
     The constraints are added directly to the view.
     
     - Parameter width: width
     
     - Returns: The associated `NSLayoutConstraint`
     */
    public func constrainToWidth(width: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .Width, relatedBy:.Equal, toItem:nil, attribute:.NotAnAttribute, multiplier:0, constant:width)
        self.addConstraint(constraint)
        return constraint
    }
    
    /**
     Adds the `NSLayoutConstraint` for constraining a view to a specified height.
     The constraints are added directly to the view.
     
     - Parameter height: height
     
     - Returns: The associated `NSLayoutConstraint`
     */
    public func constrainToHeight(height: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .Height, relatedBy:.Equal, toItem:nil, attribute:.NotAnAttribute, multiplier:0, constant:height)
        self.addConstraint(constraint)
        return constraint
    }
}
