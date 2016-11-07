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
    public func arrayByAppendContentsOf<S : Sequence>(newElements: S) -> Array where S.Iterator.Element == Element {
        var mutableArray = self
        mutableArray.append(contentsOf: newElements)
        return mutableArray;
    }

    /**
     Non-mutating version of `appendContentsOf`
     
     - Returns: a new array with the elements added to the end
     */
    public func arrayByAppendContentsOf<C : Collection>(newElements: C) -> Array where C.Iterator.Element == Element {
        var mutableArray = self
        mutableArray.append(contentsOf: newElements)
        return mutableArray;
    }
    
    /**
     [1,2,3,4,5,6].dropOddIndexes() == [1,3,5].
     
     - Returns: the array with all odd indexed items removed.
     */
    public func dropOddIndexes() -> Array {
        let indexes =  0...(count)
        let zipped = zip(self, indexes)
        
        return zipped.flatMap { pair in
            let index = pair.1
            if index % 2 == 0 {
                return pair.0
            } else {
                return nil
            }
        }
    }
 
    /**
     [1,2,3,4,5,6].dropEvenIndexes() == [2,4,6].
     
     - Returns: the array with all even indexed items removed.
     */
    public func dropEvenIndexes() -> Array {
        let indexes =  0...(count)
        let zipped = zip(self, indexes)
        
        return zipped.flatMap { pair in
            let index = pair.1
            if index % 2 != 0 {
                return pair.0
            } else {
                return nil
            }
        }
    }

    /**
     [1,2,3,4,5,6].pairConsecutiveElements() == [(1, 2),(3, 4),(5,6)].
     
     - Returns: the array with consecutive elements paired.
     */
    public func pairConsecutiveElements() -> Array<(Element, Element)> {
        let droppedOdds = self.dropOddIndexes()
        let droppedEvens = self.dropEvenIndexes()
        
        return zip(droppedOdds, droppedEvens).map { ($0.0, $0.1) }
    }
}
