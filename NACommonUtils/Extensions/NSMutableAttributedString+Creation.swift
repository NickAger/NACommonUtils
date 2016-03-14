//
//  NSMutableAttributedString+Creation.swift
//  Helpers for attributed strings
//
//  NACommonUtils
//
//  Created by Nick Ager on 12/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {
    /**
     A convenience constructor taking an array of `NSAttributedString` and 
     combining them a new `NSMutableAttributedString`
     
     - Parameter attributedStrings: Array of `NSAttributedString`
     
     - Returns: A new `NSMutableAttributedString`
     */
    public convenience init(attributedStrings: [NSAttributedString]) {
        if let (head, tail) = attributedStrings.headTail() {
            self.init(attributedString:head)
            _ = tail.reduce(self, combine: reducibleAppend)
        } else {
            self.init(string:"")
        }
    }
}

/**
 Usage: 
 
 `let attributedString = attributedStrings.reduce(NSMutableAttributedString(), combine: reducibleAppend)`
*/
public func reducibleAppend(appendTo attrString: NSMutableAttributedString, appendeeAttrString: NSAttributedString) -> NSMutableAttributedString {
    attrString.appendAttributedString(appendeeAttrString)
    return attrString
}
