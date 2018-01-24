//
//  Sum.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/24.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Sum: Expression {
    let augend: Money
    let addend: Money
    
    init(_ augend: Money, _ addend: Money) {
        self.augend = augend
        self.addend = addend
    }
}
