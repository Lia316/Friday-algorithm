//
//  1. Two Sum.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answerArr = [Int]()
        
        // index를 돌면서 target 값을 만족하는 짝이 존재하면 두 index를 append
        for index in 0..<nums.count {
            let answer2 = target - nums[index]
            if nums.contains(answer2) {
                // 답이 중복이 아닌 경우 ex) [3,2,4]
                if nums.firstIndex(of: answer2) != nums.lastIndex(of: answer2) {
                    answerArr.append(index)
                    answerArr.append(nums.lastIndex(of: answer2) ?? 0)
                    break
                }// 답이 중복인 경우 ex) [3,3]
                else if answer2 != nums[index] {
                    answerArr.append(index)
                    answerArr.append(nums.firstIndex(of: answer2) ?? 0)
                    break
                }
            }
        }
        return answerArr
    }
}
