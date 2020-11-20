//
//  4. A Very Big Sum.swift
//  week 3 algorithm
//
//  Created by Lia on 2020/11/20.
//

import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0){ $0 + $1}
}
