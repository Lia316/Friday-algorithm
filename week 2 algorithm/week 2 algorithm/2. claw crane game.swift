//
//  2. claw crane game.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation

func solution2(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boardArr = board
    var basketArr = [-1, 0]
    var countValidMove = 0
    
    for moveIndex in moves {
        for boardIndex in 0..<board.count{
            if(boardArr[boardIndex][moves[moveIndex] - 1] != 0){
                basketArr.append(boardArr[boardIndex][moves[moveIndex] - 1])
                boardArr[boardIndex][moves[moveIndex] - 1] = 0
                countValidMove += 1
                break
            }
        }
        if(basketArr.last == basketArr[basketArr.endIndex - 2]){
            basketArr.popLast()
            basketArr.popLast()
        }
    }
    print(basketArr)
    return countValidMove - basketArr.count + 2
}
