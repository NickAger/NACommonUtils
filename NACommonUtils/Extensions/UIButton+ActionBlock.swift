//
//  UIButton+ActionBlock.swift
//  Button onPressed: block extension
//
//  NACommonUtils
//
//  Created by Nick Ager on 14/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit
import ObjectiveC

private var ActionBlockKey: UInt8 = 0

public typealias ButtonActionBlockType = (sender: UIButton) -> Void

private class ActionBlockWrapper : NSObject {
    var block : ButtonActionBlockType
    init(block: ButtonActionBlockType) {
        self.block = block
    }
}

extension UIButton {
    /**
     Button `onPressed:` block extension
     
     - Parameter block: callback block when the button is 'pressed'
     */
    public func onPressed(block: ButtonActionBlockType) {
        objc_setAssociatedObject(self, &ActionBlockKey, ActionBlockWrapper(block: block), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) // note we don't use OBJC_ASSOCIATION_COPY_NONATOMIC as we're storing the ActionBlockWrapper object not the onPressAction dispatch_block_t. ActionBlockWrapper will copy the onPressAction block correctly.
        addTarget(self, action: "extensionHandleBlockAction:", forControlEvents: .TouchUpInside)
    }
    
    private func extensionHandleBlockAction(sender: UIButton) {
        let wrapper = objc_getAssociatedObject(self, &ActionBlockKey) as! ActionBlockWrapper
        wrapper.block(sender: sender)
    }
}
