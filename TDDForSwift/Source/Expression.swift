//
//  Expression.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/24.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

protocol Expression {
    func reduce(_ bank: Bank, _ to: String) -> Money
}
