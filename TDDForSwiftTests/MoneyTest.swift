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
        XCTAssertEqual(Money.dollar(10), five.times(2) as! Money)
        XCTAssertEqual(Money.dollar(15), five.times(3) as! Money)
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
        let five: Money = Money.dollar(5)
        let sum: Expression = five.plus(five)
        let bank: Bank = Bank()
        let reduced: Money = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }
    
    func testPlusReturnsSum() {
        let five: Money = Money.dollar(5)
        let result: Expression = five.plus(five)
        let sum: Sum = result as! Sum
        XCTAssertEqual(five, sum.augend as! Money)
        XCTAssertEqual(five, sum.addend as! Money)
    }
    
    func testReduceSum() {
        let sum: Expression = Sum(Money.dollar(3), Money.dollar(4))
        let bank: Bank = Bank()
        let result: Money = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }
    
    func testReduceMoney() {
        let bank: Bank = Bank()
        let result: Money = bank.reduce(Money.dollar(1), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
    
    func testReduceMoneyDifferentCurrency() {
        let bank: Bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result: Money = bank.reduce(Money.franc(2), "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }
    
    func testIdentifyRate() {
        XCTAssertEqual(1, Bank().rate("USD", "USD"))
    }
    
    func testMixedAddition() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank: Bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let result: Money = bank.reduce(fiveBucks.plus(tenFrancs), "USD")
        XCTAssertEqual(Money.dollar(10), result)
    }
    
    func testSumPlusMoney() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank: Bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum: Expression = Sum(fiveBucks, tenFrancs).plus(fiveBucks)
        let result: Money = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(15), result)
    }
    
    func testSumTimes() {
        let fiveBucks: Expression = Money.dollar(5)
        let tenFrancs: Expression = Money.franc(10)
        let bank: Bank = Bank()
        bank.addRate("CHF", "USD", 2)
        let sum: Expression = Sum(fiveBucks, tenFrancs).times(2)
        let result: Money = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(20), result)
    }
}
