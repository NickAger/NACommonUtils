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

}
