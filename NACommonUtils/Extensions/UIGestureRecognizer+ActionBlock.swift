//
//  UIGestureRecognizer+ActionBlock.swift
//  Gesture recognizer block extension
//
//  NACommonUtils
//
//  Created by Nick Ager on 09/06/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit
import ObjectiveC

private var ActionBlockKey: UInt8 = 0

public typealias NAGestureActionBlockType = (sender: UIGestureRecognizer) -> Void

private class ActionBlockWrapper : NSObject {
    var block : NAGestureActionBlockType
    init(block: NAGestureActionBlockType) {
        self.block = block
    }
}

extension UIGestureRecognizer {
    /**
     Construct a gesture recognizer with a handler block
     
     - Parameter block: callback block when gesture is recognized
     */
    convenience init(block: NAGestureActionBlockType) {
        self.init()
        
        addBlockTarget(block)
    }

    /**
     Add a handler block
     
     - Parameter block: callback when gesture is recognized
     */
    public func addBlockTarget(block: NAGestureActionBlockType) {
        objc_setAssociatedObject(self, &ActionBlockKey, ActionBlockWrapper(block: block), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) // note we don't use OBJC_ASSOCIATION_COPY_NONATOMIC as we're storing the ActionBlockWrapper object not the onPressAction dispatch_block_t. ActionBlockWrapper will copy the onPressAction block correctly.
        addTarget(self, action: #selector(extensionHandleBlockAction(_:)))
    }
    
    @objc private func extensionHandleBlockAction(sender: UIGestureRecognizer) {
        let wrapper = objc_getAssociatedObject(self, &ActionBlockKey) as! ActionBlockWrapper
        wrapper.block(sender: sender)
    }
}