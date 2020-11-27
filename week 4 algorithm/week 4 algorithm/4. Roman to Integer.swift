//
//  4. Roman to Integer.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

class Solution4 {
    func romanToInt(_ s: String) -> Int {
        let value = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000 ]
        var numArr = s.map { value[String($0)]! }
        var outPut = 0

        for index in 1..<numArr.count {
            if numArr[index-1] < numArr[index]{
                numArr[index] -= numArr[index - 1]
                numArr[index - 1] = 0
            }
            outPut += numArr[index - 1]
        }
        return outPut + numArr[numArr.count - 1]
    }
}

// ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000 ]
