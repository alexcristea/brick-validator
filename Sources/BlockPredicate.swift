//
//  BlockPredicate.swift
//  ValidationToolkit
//
//  Created by Alex Cristea on 20/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import Foundation

/**
 The `BlockPredicate` struct is used to define closure based conditions used to evaluate generic inputs.
 */
public struct BlockPredicate<T>: Predicate {

    private let evaluationBlock: (T) -> Bool

    /**
     Creates and returns a new `BlockPredicate` instance.
     
     - parameter aBlock: A closure describing a custom validation condition.
     */
    public init(aBlock:@escaping (T) -> Bool) {
        evaluationBlock = aBlock
    }

    /**
     Returns a `Boolean` value that indicates whether a given input matches the evalutaion closure specified by the receiver.
     
     - parameter input: The input against which to evaluate the receiver.
     - returns: `true` if input matches the validation closure specified by the receiver, otherwise `false`.
     */
    public func evaluate(with input: T) -> Bool {
        return evaluationBlock(input)
    }
}
