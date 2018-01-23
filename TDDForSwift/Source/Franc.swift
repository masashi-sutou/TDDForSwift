//
//  Franc.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Franc: Money {
    
    override init(_ amount: Int, _ currency: String) {
        super.init(amount, currency)
    }
    
    override func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currency)
    }
}
