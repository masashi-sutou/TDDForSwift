//
//  Franc.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Franc: Money {
    
    init(_ amount: Int) {
        super.init()
        super.amount = amount
    }
    
    override func times(_ multiplier: Int) -> Money {
        return Franc(amount * multiplier)
    }
    
    override func currency() -> String {
        return "CHF"
    }
}
