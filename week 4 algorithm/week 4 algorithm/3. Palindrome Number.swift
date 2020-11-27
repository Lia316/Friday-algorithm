//
//  3. Palindrome Number.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

class Solution3 {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var outPut = 0
        
        while(num != 0){
            outPut *= 10
            outPut += num % 10
            num /= 10
        }
        
        return x < 0 ? false : outPut == x
    }
}
