//
//  Dollar.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/23.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Dollar {
    
    var amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }
    
    func equals(_ object: AnyObject) -> Bool {
        let dollar: Dollar = object as! Dollar
        return amount == dollar.amount
    }
}
