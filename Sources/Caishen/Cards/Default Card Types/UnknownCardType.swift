//
//  UnknownCardType.swift
//  Pods
//
//  Created by Christopher Jones on 3/24/16.
//
//

/**
 *  The undefined card type
 */
public struct UnknownCardType: CardType {

    public let name = "Unknown"
    public let CVCLength = 3
    public let identifyingDigits: Set<Int> = []

    public func validate(number: Number) -> CardValidationResult {
        return CardValidationResult.UnknownType
            .union(lengthMatchesType(number.length))
            .union(numberIsNumeric(number))
            .union(numberIsValidLuhn(number))
    }

    public init() {
        
    }

}
