//
//  SequenceTypeFindTests.swift
//  NACommonUtils
//
//  Created by Nick Ager on 04/05/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import XCTest

class SequenceTypeFindTests: XCTestCase {
    
    func testFind() {
        let a1 = [1,2,3,4,5,6]
        
        let divisableBy3 = a1.first { $0 % 3 == 0}
        XCTAssert(divisableBy3 == 3)
        
        let divisableBy7 = a1.first { $0 % 7 == 0}
        XCTAssert(divisableBy7 == nil)
    }
}
