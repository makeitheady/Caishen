//
//  VisaCardType.swift
//  Pods
//
//  Created by Daniel Vancura on 2/17/16.
//
//

import UIKit

public struct Visa: CardType {
    
    public let cardTypeImage: UIImage? = UIImage(named: "Visa") ?? UIImage(named: "Visa", inBundle: NSBundle(forClass: CardNumberTextField.self), compatibleWithTraitCollection: nil)
    
    public let name = "Visa"
    
    public let CVCLength = 3
    
    public let identifyingDigits = Set([4])

    public init() {
        
    }

}