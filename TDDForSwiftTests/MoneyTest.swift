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
        XCTAssertTrue(Money.franc(5).equals(Money.franc(5)))
        XCTAssertFalse(Money.franc(5).equals(Money.franc(6)))
        XCTAssertFalse(Money.franc(5).equals(Money.dollar(5)))
    }
    
    func testFrancMulitiplication() {
        let five: Money = Money.franc(5)
        XCTAssertEqual(Money.franc(10), five.times(2))
        XCTAssertEqual(Money.franc(15), five.times(3))
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }
    
    func testDifferentClassEquality() {
        XCTAssertTrue(Money(10, "CHF").equals(Franc(10, "CHF")))
    }
}
