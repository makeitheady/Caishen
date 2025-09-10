//
//  CardNumberFormatterTests.swift
//  Caishen
//
//  Created by Daniel Vancura on 2/9/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import XCTest
import Caishen

class CardNumberFormatterTests: XCTestCase, @unchecked Sendable  {
    
    private let separator = "-"
    private var formatter: CardNumberFormatter!
    
    override func setUp() {
        super.setUp()
        
        MainActor.assumeIsolated {
            formatter = CardNumberFormatter(cardTypeRegister: CardTypeRegister.sharedCardTypeRegister, separator: separator)
        }
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    @MainActor func testCorrectSeparator() {
        let testNumber = Number(rawValue: "4123123412341234")
        
        let formattedTestNumber = self.formatter.format(cardNumber: testNumber.description)
        
        XCTAssertEqual(formattedTestNumber, "4123-1234-1234-1234")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
