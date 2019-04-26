//
//  NSMutableAttributedStringCreationTests.swift
//  NACommonUtils
//
//  Created by Nick Ager on 11/03/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import XCTest
@testable import NACommonUtils

class NSMutableAttributedStringCreationTests: XCTestCase {

    func testInit() {
        let titleString = " iDiff View\n\n"
        let title = NSMutableAttributedString(string: titleString, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20)])
        let bodyString = "iDiff View highlights the difference between two versions of a text file."
        let body = NSAttributedString(string: bodyString)
        
        
        let x = NSMutableAttributedString(attributedStrings: [title, body])
        
        let y = NSMutableAttributedString(string: titleString + bodyString)
        y.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 20), range: NSRange(location: 0, length: titleString.count))
        
        XCTAssert(x == y)
    }
}
