//
//  KeepInMemoryMixin.swift
//  NACommonUtils
//
//  Created by Nick Ager on 29/04/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

// Note: any class implementing this protocol needs to be declared final otherwise you'll end-up with a compiler error:
// 'KeepInMemoryProtocol' requirement 'keepInMemory' cannot be satisfied by a non-final class because it uses 'Self' in a non-parameter, non-result type position
// see: http://stackoverflow.com/questions/32999293/how-do-you-implement-protocol-methods-that-return-covariant-selfs

/**
 Add to a class to allow the class to keep itself in memory. Need to define a
 property `var keepInMemory: <type>?`
 
 */
public protocol KeepInMemoryMixin : class {
    var keepInMemory : Self? {get set}
    func keepOurselvesInMemory()
    func freeOurselvesFromMemory()
}

public extension KeepInMemoryMixin {
    func keepOurselvesInMemory() {
        keepInMemory = self
    }
    
    func freeOurselvesFromMemory() {
        keepInMemory = nil
    }
}