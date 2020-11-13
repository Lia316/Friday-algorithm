//
//  1. array divisor.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation
// 다른 사람 코드 보고 수정함
// 그 전 파일은..사라짐..😂

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{ $0 % divisor == 0}.sorted()
    return result.count == 0 ? [-1] : result
}
