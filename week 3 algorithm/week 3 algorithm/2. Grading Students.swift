//
//  2. Grading Students.swift
//  week 3 algorithm
//
//  Created by Lia on 2020/11/20.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var resultScore = [Int]()
    for index in 0..<grades.count {
        if(grades[index] % 5 > 2 && grades[index] > 37) {
            let roundScore = grades[index] + 5 - grades[index] % 5
            resultScore.append(roundScore)
        } else {
            resultScore.append(grades[index])
        }
    }
    return resultScore
}
