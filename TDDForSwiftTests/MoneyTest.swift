//
//  MoneyTest.swift
//  TDDForSwiftTests
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import XCTest
@testable import TDDForSwift

class MoneyTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMulitiplication() {
        let five: Money = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2))
        XCTAssertEqual(Money.dollar(15), five.times(3))
    }
    
    func testEquality() {
        XCTAssertTrue(Money.dollar(5).equals(Money.dollar(5)))
        XCTAssertFalse(Money.dollar(5).equals(Money.dollar(6)))
        XCTAssertFalse(Money.franc(5).equals(Money.dollar(5)))
    }
        
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }
    
    func testSimpleAddition() {
        let sum: Money = Money.dollar(5).plus(Money.dollar(5))
        let reduced: Money = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }
}
