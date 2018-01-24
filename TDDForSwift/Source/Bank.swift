//
//  Bank.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/24.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
        let sum: Sum = source as! Sum
        let amount: Int = sum.augend.amount + sum.addend.amount
        return Money(amount, to)
    }
}
