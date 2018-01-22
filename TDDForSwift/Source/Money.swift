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
    
    func equals<T: Equatable>(_ object: T) -> Bool {	
        let money: Money = object as! Money
        return amount == money.amount
    }
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
}