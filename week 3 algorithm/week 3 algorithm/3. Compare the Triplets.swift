//
//  3. Compare the Triplets.swift
//  week 3 algorithm
//
//  Created by Lia on 2020/11/20.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var comparisonScore = [0, 0]
    
    for index in 0..<a.count {
        if a[index] != b[index]  {
            comparisonScore[0] += a[index] > b[index] ? 1 : 0
            comparisonScore[1] += a[index] < b[index] ? 1 : 0
        }
    }
    return comparisonScore
}
