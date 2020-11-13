//
//  4. model test score.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation

func solution4(_ answers:[Int]) -> [Int] {
    let student1 = [1, 2, 3, 4, 5]
    let student2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let student3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var stu1 = [Int]()
    var stu2 = [Int]()
    var stu3 = [Int]()
    var score = [0, 0, 0]
    var result = [Int]()
    
    for _ in 0...answers.count/7{
        stu1 += student1
        stu1 += student1
        stu2 += student2
        stu3 += student3
    }
    for index in 0..<answers.count{
        if(answers[index] == stu1[index]){score[0] += 1}
        if(answers[index] == stu2[index]){score[1] += 1}
        if(answers[index] == stu3[index]){score[2] += 1}
    }
    
    for index in 0..<score.count {
        if(score[index] == score.max()){
            result.append(index + 1)
        }
    }
    
    return result
}


// 다른 사람 코드 보고 공부하며 적음
func otherSolution4(_ answers:[Int]) -> [Int] {
    let student = (
        a: [1, 2, 3, 4, 5],
        b: [2, 1, 2, 3, 2, 4, 2, 5],
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    )
    var score : [Int:Int] = [1:0, 2:0, 3:0]
    
    for index in 0..<answers.count{
        if(answers[index % 5] == student.a[index]) {score[1]! += 1}
        if(answers[index % 8] == student.b[index]) {score[2]! += 1}
        if(answers[index % 10] == student.c[index]) {score[3]! += 1}
    }
    
    return score.filter{ $0.1 == score.values.max()}.map{ $0.0 }.sorted()
}
