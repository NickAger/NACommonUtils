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
    
    /**
     Non-mutating version of `append`
     
     - Returns: a new array with the element added to the end
     */
    public func arrayByAppend(newElement: Element) -> Array {
        var mutableArray = self
        mutableArray.append(newElement)
        return mutableArray;
    }
 
    /**
     Non-mutating version of `appendContentsOf`
     
     - Returns: a new array with the elements added to the end
     */
    public func arrayByAppendContentsOf<S : SequenceType where S.Generator.Element == Element>(newElements: S) -> Array {
        var mutableArray = self
        mutableArray.appendContentsOf(newElements)
        return mutableArray;
    }

    /**
     Non-mutating version of `appendContentsOf`
     
     - Returns: a new array with the elements added to the end
     */
    public func arrayByAppendContentsOf<C : CollectionType where C.Generator.Element == Element>(newElements: C) -> Array {
        var mutableArray = self
        mutableArray.appendContentsOf(newElements)
        return mutableArray;
    }
}