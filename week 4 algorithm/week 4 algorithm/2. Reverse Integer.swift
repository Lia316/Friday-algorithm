//
//  2. Reverse Integer.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

class Solution2 {
    func reverse(_ x: Int) -> Int {
        
        var num = x < 0 ? -x : x
        var outPut = 0
        
        while(num != 0){
            outPut *= 10
            outPut += num % 10
            num /= 10
        }
        if outPut > 2147483647 {return 0}
        return x < 0 ? -outPut : outPut
    }
}
