//
//  6. Number Line Jumps.swift
//  week 3 algorithm
//
//  Created by Lia on 2020/11/20.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    let time = Double(x2 - x1)/Double(v1 - v2)
    
    if time <= 0 || time - ceil(time) != 0 { return "NO" }
    return "YES"
}
