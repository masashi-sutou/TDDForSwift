//
//  Money.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Money: Equatable {
    var amount: Int = 0
    
    var currency: String = ""

    func times(_ multiplier: Int) -> Money {
        fatalError("Abstract")
    }
    
    func equals<T: Equatable>(_ object: T) -> Bool {
        let money: Money = object as! Money
        return amount == money.amount && type(of: self) == type(of: money)
    }
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
    
    static func dollar(_ amount: Int) -> Money {
        return Dollar(amount)
    }
    
    static func franc(_ amount: Int) -> Money {
        return Franc(amount, "CHF")
    }
}
