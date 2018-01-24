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
        if let source: Money = source as? Money {
            return source.reduce(to)
        }
        let sum: Sum = source as! Sum
        return sum.reduce(to)
    }
}
