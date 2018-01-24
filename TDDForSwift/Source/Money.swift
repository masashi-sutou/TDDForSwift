//
//  Money.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Money: Equatable, CustomStringConvertible {
    
    var amount: Int
    var currency: String
    var description: String

    init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
        self.description = String(amount) + " " + currency
    }
    
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currency)
    }
    
    func plus(_ addend: Money) -> Expression {
        return Money(amount + addend.amount, currency)
    }
    
    func equals<T: Equatable>(_ object: T) -> Bool {
        let money: Money = object as! Money
        return amount == money.amount && currency == money.currency
    }
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }
    
    static func dollar(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }
    
    static func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }
}
