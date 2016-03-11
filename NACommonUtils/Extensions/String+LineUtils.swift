//
//  String+LineUtils.swift
//  Strings line helpers
//
//  NACommonUtils
//
//  Created by Nick Ager on 12/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

extension String {
    public func lineCount() -> Int {
        return componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet()).count - 1
    }
    
    // ignores leading whitespace
    public func startsWithNewLine() -> Bool {
        if self.isEmpty {
            return false
        }
        
        let trimmedString = stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        let components = trimmedString.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet())
        guard let firstString = components.first else {
            return false
        }
        return firstString.isEmpty
    }
    
    // ignores trailing whitespace
    public func endsWithNewLine() -> Bool {
        if self.isEmpty {
            return false
        }
        
        let trimmedString = stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        let components = trimmedString.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet())
        guard let lastString = components.last else {
            return false
        }
        return lastString.isEmpty
    }
}