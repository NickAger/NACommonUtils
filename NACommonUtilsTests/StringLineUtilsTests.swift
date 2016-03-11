//
//  StringLineUtilsTests.swift
//  NACommonUtils
//
//  Created by Nick Ager on 11/03/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import XCTest

class StringLineUtilsTests: XCTestCase {

    func testLineCount() {
        let s1 = "Hello\nLines"
        XCTAssert(s1.lineCount() == 1)
        
        let s2 = "Hello\n"
        XCTAssert(s2.lineCount() == 1)
        
        let s3 = "Hello"
        XCTAssert(s3.lineCount() == 0)
        
        let s4 = "\nHello"
        XCTAssert(s4.lineCount() == 1)
        
        let s5 = ""
        XCTAssert(s5.lineCount() == 0)
        
        let s6 = "\n"
        XCTAssert(s6.lineCount() == 1)
        
        let s7 = " \n"
        XCTAssert(s7.lineCount() == 1)
        
        let s8 = " hello\nworld\n  "
        XCTAssert(s8.lineCount() == 2)
    }
    
    func testStartsWithNewLine() {
        let s1 = "Hello\nLines"
        XCTAssert(s1.startsWithNewLine() == false)
        
        let s3 = "Hello"
        XCTAssert(s3.startsWithNewLine() == false)
        
        let s4 = "\nHello"
        XCTAssert(s4.startsWithNewLine() == true)
        
        let s5 = ""
        XCTAssert(s5.startsWithNewLine() == false)
        
        let s6 = "\n"
        XCTAssert(s6.startsWithNewLine() == true)
        
        let s7 = " \n"
        XCTAssert(s7.startsWithNewLine() == true)
        
        let s8 = " hello\nworld\n  "
        XCTAssert(s8.startsWithNewLine() == false)
    }
    
    func testEndsWithNewLine() {
        let s1 = "Hello\nLines"
        XCTAssert(s1.endsWithNewLine() == false)
        
        let s3 = "Hello"
        XCTAssert(s3.endsWithNewLine() == false)
        
        let s4 = "\nHello"
        XCTAssert(s4.endsWithNewLine() == false)
        
        let s5 = ""
        XCTAssert(s5.endsWithNewLine() == false)
        
        let s6 = "\n"
        XCTAssert(s6.endsWithNewLine() == true)
        
        let s7 = " \n"
        XCTAssert(s7.endsWithNewLine() == true)
        
        let s8 = " hello\nworld\n  "
        XCTAssert(s8.endsWithNewLine() == true)
    }

}
