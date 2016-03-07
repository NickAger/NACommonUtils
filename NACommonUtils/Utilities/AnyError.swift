//
//  AnyError.swift
//  iDiffView
//
//  NACommonUtils
//
//  Type erasure for ErrorType(s). Designed to be used as the error type associated with a Future - so that when composing futures with manp/flatMap the error type is the same and so can be propagated through the compositional chain.
//  see https://github.com/Thomvis/BrightFutures/issues/115
//
//  Created by Nick Ager on 10/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

public struct AnyError : ErrorType {
    public let cause:ErrorType
    
    public init(cause:ErrorType) {
        self.cause = cause
    }
}