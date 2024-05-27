//
//  StubModels.swift
//  
//
//  Created by Roman Mazeev on 14.07.2021.
//

@testable import MRZScanner
import CoreImage

struct StubModels {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        return formatter
    }()

    static let firstParsedResult = ParsedResult(
        format: .td3,
        documentType: .passport,
        documentTypeAdditional: nil, 
        countryCode: "UTO",
        surnames: "ERIKSSON",
        givenNames: "ANNA MARIA",
        documentNumber: "L898902C3",
        documentNumberCheckDigit: nil, 
        nationalityCountryCode: "UTO",
        birthdate:  dateFormatter.date(from: "740812")!,
        birthdateCheckDigit: nil, 
        sex: .female,
        expiryDate: dateFormatter.date(from: "120415")!,
        expiryDateCheckDigit: nil, 
        optionalData: "ZE184226B",
        mrzString: "",
        mrzStringWithFinalDigit: "",
        optionalData2: nil,
        finalCheckDigit: nil
    )

    static let secondParsedResult = ParsedResult(
        format: .td2,
        documentType: .id,
        documentTypeAdditional: nil,
        countryCode: "",
        surnames: "",
        givenNames: "",
        documentNumber: nil,
        documentNumberCheckDigit: nil,
        nationalityCountryCode: "",
        birthdate: nil,
        birthdateCheckDigit: nil,
        sex: .male,
        expiryDate: nil,
        expiryDateCheckDigit: nil,
        optionalData: nil,
        mrzString: "",
        mrzStringWithFinalDigit: "",
        optionalData2: nil,
        finalCheckDigit: nil
    )

    static let textRecognizerResults: [TextRecognizerResult] = [.init(results: [], boundingRect: .zero)]
    static let validatedResults: [ValidatedResult] = [.init(result: "", index: 0)]

    static var sampleBufferStub: CVPixelBuffer {
        var pixelBuffer : CVPixelBuffer? = nil
        CVPixelBufferCreate(kCFAllocatorDefault, 100, 100, kCVPixelFormatType_32BGRA, nil, &pixelBuffer)
        return pixelBuffer!
    }
}
