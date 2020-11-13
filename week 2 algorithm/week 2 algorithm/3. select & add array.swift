//
//  3. select & add array.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation

func solution3(_ numbers:[Int]) -> [Int] {
    var resultArr = [Int]()
    
    for index in 1..<numbers.count{
        for i in 0..<index{
            let mix = numbers[index] + numbers[i]
            if(!resultArr.contains(mix)){
                resultArr.append(mix)
            }
        }
    }
    return resultArr.sorted()
}
