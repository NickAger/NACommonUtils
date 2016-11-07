//
//  SequenceType+find.swift
//  NACommonUtils
//
//  Created by Nick Ager on 04/05/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

// from http://stackoverflow.com/questions/33795654/find-first-element-matching-condition-in-swift-array-e-g-eksource
public extension Sequence {
    public func find(predicate: (Self.Iterator.Element) throws -> Bool) rethrows -> Self.Iterator.Element? {
        for element in self {
            if try predicate(element) {
                return element
            }
        }
        return nil
    }
}
