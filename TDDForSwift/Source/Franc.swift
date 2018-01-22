//
//  Franc.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Franc: Money, Equatable {
    
    init(_ amount: Int) {
        super.init()
        super.amount = amount
    }
    
    func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }
    
    func equals<T: Equatable>(_ object: T) -> Bool {
        let franc: Franc = object as! Franc
        return amount == franc.amount
    }
    
    static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
}
