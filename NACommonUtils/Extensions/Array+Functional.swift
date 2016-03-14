//
//  Array+Functional.swift
//  Functional helpers for Array
//
//  NACommonUtils
//
//  Created by Nick Ager on 12/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

extension Array {
    /**
     Returns an optional tuple containing the `head` element and the `tail` array.
     
     - Returns: An optional tuple `(head: Element, tail: [Element])`
     */
    public func headTail() -> (head: Element, tail: [Element])? {
        return (count > 0) ? (self[0],Array(dropFirst(1))) : nil
    }
}