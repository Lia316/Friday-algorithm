//
//  5. Longest Common Prefix.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

class Solution5 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs == [] || strs[0].count == 0 { return "" }
        
        for num in 1...strs[0].count{
            for index in 0..<strs.count {
                if strs[0].prefix(num) != strs[index].prefix(num) {
                    return String(strs[0].prefix(num - 1))
                }
            }
        }
        return strs[0]
    }
}
