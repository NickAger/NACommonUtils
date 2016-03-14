//
//  OnePixelConstraint.swift
//  constraint can be set in Interface-Builder, will always be 1px regardless of screen scale.
//
//  NACommonUtils
//
//  Created by Nick Ager on 22/01/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import UIKit

/**
 An auto-layout width/height constraint that will always be 1px regardless of
 screen scale; self.constant = 0.5 on original Retina devices.

See also:
- [How do I create a 1px line in Interface Builder?](http://stackoverflow.com/questions/23666209/how-do-i-create-a-1px-line-in-interface-builder)
*/
public class OnePixelConstraint: NSLayoutConstraint {
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.constant = 1.0 / UIScreen.mainScreen().scale
    }
}
