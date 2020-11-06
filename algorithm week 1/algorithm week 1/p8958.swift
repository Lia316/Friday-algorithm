//
//  p8958.swift
//  algorithm week 1
//
//  Created by Lia on 2020/11/06.
//

import Foundation

// O가 들어있는 배열 묶음의 점수
func sumNum(count : Int) -> Int {
    var sum : Int = 0
    for index in 1...count{
        sum += index
    }
    return sum
}

// 한 줄 계산 - O가 들어있는 배열로 쪼개어 읽고 점수 계산
func scoreOX() {
    let readArray = Array(readLine()!.split(separator: "X"))
    var score : Int = 0
    for index in 0..<readArray.count {
        score += sumNum(count: readArray[index].count)
    }
    print(score)
}

// 여러 줄 계산
func ResultOX() {
    let numTestCase = Int(readLine()!)!
    
    for _ in 1...numTestCase{
        scoreOX()
    }
}
