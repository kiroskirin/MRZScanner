//
//  Validator.swift
//  
//
//  Created by Roman Mazeev on 12.07.2021.
//

public typealias ValidatedResults = [ValidatedResult]
public struct ValidatedResult {
    /// MRZLine
    public let result: String
    /// MRZLine boundingRect index
    public let index: Int
}

public protocol Validator {
    func getValidatedResults(from possibleLines: [[String]]) -> ValidatedResults
}
