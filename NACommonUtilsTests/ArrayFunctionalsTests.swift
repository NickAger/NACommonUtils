//
//  Array+FunctionalTests.swift
//  NACommonUtilsTests
//
//  Created by Nick Ager on 07/03/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import XCTest
@testable import NACommonUtils

class ArrayFunctionalTests: XCTestCase {
    
    func testHeadTailNoElements() {
        let x : [Int] = []
        XCTAssert(x.headTail() == nil)
    }
    
    func testHeadTailOneElement() {
        let x = [1]
        let (head, tail) = x.headTail()!
        XCTAssert(head == 1)
        XCTAssert(tail == [])
    }
    
    func testHeadTailTwoElements() {
        let x = [1,2]
        let (head, tail) = x.headTail()!
        XCTAssert(head == 1)
        XCTAssert(tail == [2])
    }
    
    func testHeadTailThreeElements() {
        let x = [1,2,3]
        let (head, tail) = x.headTail()!
        XCTAssert(head == 1)
        XCTAssert(tail == [2,3])
    }
    
    func testArrayByAppend() {
        let x = [1,2,3]
        let y = x.arrayByAppend(newElement: 10)
        
        XCTAssert(y.count == 4)
        XCTAssert(y.last == 10)
    }
    
    func testArrayByAppendEmpty() {
        let x = [Int]()
        let y = x.arrayByAppend(newElement: 10)
        
        XCTAssert(y.count == 1)
        XCTAssert(y.last == 10)
    }
    
    func testArrayByAppendContentsOf() {
        let x = [1,2,3]
        let y = x.arrayByAppendContentsOf(newElements: [5,6,7,8])
        
        XCTAssert(y.count == 7)
        XCTAssert(y.last == 8)
    }
    
    func testArrayByAppendContentsOfEmpty() {
        let x = [Int]()
        let y = x.arrayByAppendContentsOf(newElements: [5,6,7,8])
        
        XCTAssert(y.count == 4)
        XCTAssert(y.last == 8)
    }
    
    func testArrayByAppendContentsOfEmpty2() {
        let x = [1,2,5]
        let y = x.arrayByAppendContentsOf(newElements: [])
        
        XCTAssert(y.count == 3)
        XCTAssert(y.last == 5)
    }
    
    func testArrayByAppendContentsOfEmpty3() {
        let x = [Int]()
        let y = x.arrayByAppendContentsOf(newElements: [])
        
        XCTAssert(y.count == 0)
        XCTAssert(y.last == nil)
    }
}
