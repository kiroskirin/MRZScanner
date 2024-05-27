//
//  MRZLineParser.swift
//  
//
//  Created by Roman Mazeev on 13.07.2021.
//

import MRZParser

// TODO: Remove this line when `ParsedResult` struct will be implemented
public typealias ParsedResult = MRZResult

public struct MRZLineParser: Parser {
    public init() { }
    public func parse(lines: [String]) -> ParsedResult? {
        MRZParser(isOCRCorrectionEnabled: true).parse(mrzLines: lines)
    }
}
