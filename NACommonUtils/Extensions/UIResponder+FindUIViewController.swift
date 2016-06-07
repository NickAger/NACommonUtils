//
//  UIResponder+FindUIViewController.swift
//  Walk the responder chain until we find a UIViewController
//
//  NACommonUtils
//
//  Created by Nick Ager on 12/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit

extension UIResponder {
    /**
     Walk the responder chain until we find a `UIViewController`; useful when a 
     `UIView` needs to access `UIViewController` API
     
    - Returns: An optional `UIViewController`
     */
    public func associatedViewController() -> UIViewController? {
        return (self.transverseResponderChainViewController() as? UIViewController)
    }
    
    private func transverseResponderChainViewController() -> UIResponder? {
        guard let nextRespondr = self.nextResponder() else {
            return nil
        }
        
        if nextRespondr.isKindOfClass(UIViewController) {
            return nextRespondr
        } else if nextRespondr.isKindOfClass(UIResponder) {
            return nextRespondr.transverseResponderChainViewController()
        } else {
            return nil
        }
    }
}