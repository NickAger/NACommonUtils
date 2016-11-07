//
//  UIView+Autolayout.swift
//  Autolayout helpers - somewhat obsoleted by layout anchors - https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html
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
    @discardableResult public func useAutolayout() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

extension UIView {
    /**
     Adds the `NSLayoutConstraint`s for centering a view in a superview. The
     constraints are added to the specified superview.
     
     - Parameter superview: the view to be centered within.
     
     - Returns: The array of associated `NSLayoutConstraint`
     */
    @discardableResult public func centerIn(superview: UIView) -> [NSLayoutConstraint] {
        let horizontalCenterConstraint = centerHorizontallyIn(superview: superview)
        let verticallyCenterConstraint = centerVerticallyIn(superview: superview)
        
        return [horizontalCenterConstraint, verticallyCenterConstraint]
    }
    
    /**
     Adds the `NSLayoutConstraint` for centering horizontally a view 
     in a superview. The constraints are added to the specified superview.
     
     - Parameter superview: the view to be centered within.
     
     - Returns: The array of associated `NSLayoutConstraint`
     */
    @discardableResult public func centerHorizontallyIn(superview: UIView) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute:.centerX, relatedBy:.equal, toItem:superview, attribute:.centerX, multiplier:1.0, constant:0)
        
        superview.addConstraint(constraint)
        return constraint
    }
    
    /**
     Adds the `NSLayoutConstraint` for centering vertically a view
     in a superview. The constraints are added to the specified superview.
     
     - Parameter superview: the view to be centered within.
     
     - Returns: The array of associated `NSLayoutConstraint`
     */
    @discardableResult public func centerVerticallyIn(superview: UIView) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute:.centerY, relatedBy:.equal, toItem:superview, attribute:.centerY, multiplier:1.0, constant:0)
        
        superview.addConstraint(constraint)
        return constraint
    }
    
    /**
     Adds the `NSLayoutConstraint` for constraining a view to a specified width.
     The constraints are added directly to the view.
     
     - Parameter width: width
     
     - Returns: The associated `NSLayoutConstraint`
     */
    @discardableResult public func constrainTo(width: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .width, relatedBy:.equal, toItem:nil, attribute:.notAnAttribute, multiplier:0, constant:width)
        self.addConstraint(constraint)
        return constraint
    }
    
    /**
     Adds the `NSLayoutConstraint` for constraining a view to a specified height.
     The constraints are added directly to the view.
     
     - Parameter height: height
     
     - Returns: The associated `NSLayoutConstraint`
     */
    @discardableResult public func constrainTo(height: CGFloat) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy:.equal, toItem:nil, attribute:.notAnAttribute, multiplier:0, constant:height)
        self.addConstraint(constraint)
        return constraint
    }
    
    /**
     Adds `NSLayoutConstraint`s for constraining a view to a specified size.
     The constraints are added directly to the view.
     
     - Parameter size: size
     
     - Returns: The associated `NSLayoutConstraint`s
     */
    @discardableResult public func constrainTo(size: CGSize) -> [NSLayoutConstraint] {
        let heightConstraint = constrainTo(height: size.height)
        let widthConstraint = constrainTo(width: size.width)
        return [heightConstraint,widthConstraint]
    }
}
