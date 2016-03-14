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
    /**
     How many newlines in a string?
     
     - Returns: Number of newlines in a string
     */
    public func lineCount() -> Int {
        return componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet()).count - 1
    }
    
    /**
     Checks if a string starts with a newline, ignoring any leading white space
     
     - Returns: `true` if the string starts with a newline; `false` otherwise.
     */
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
    
    /**
     Checks if a string ends with a newline, ignoring any trailing white space
     
     - Returns: `true` if the string ends with a newline; `false` otherwise.
     */
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