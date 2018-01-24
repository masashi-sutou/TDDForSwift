//
//  Pair.swift
//  TDDForSwift
//
//  Created by 須藤将史 on 2018/01/25.
//  Copyright © 2018年 須藤将史. All rights reserved.
//

import Foundation

class Pair: Hashable {
    private let from: String
    private let to: String
    
    init(_ from: String, _ to: String) {
        self.from = from
        self.to = to
    }
    
    var hashValue: Int = 0
    
    static func ==(lhs: Pair, rhs: Pair) -> Bool {
        return lhs.from == rhs.from && lhs.to == rhs.to
    }
}
