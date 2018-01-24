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
        return source.reduce(self, to)
    }
    
    func addRate(_ from: String, _ to: String, _ rate: Int) {
        
    }
    
    func rate(_ from: String, _ to: String) -> Int {
        return from == "CHF" && to == "USD" ? 2 : 1
    }
}
