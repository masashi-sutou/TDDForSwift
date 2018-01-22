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
        let five: Dollar = Dollar(5)
        five.times(2)
        XCTAssertEqual(10, five.amount)
        
        five.times(3)
        XCTAssertEqual(15, five.amount)
    }
}
