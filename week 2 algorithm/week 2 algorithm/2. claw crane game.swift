//
//  2. claw crane game.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation

func solution2(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boardArr = board
    var basketArr = [-1, 0]     // 예외 처리 안 하기 위함
    var countValidMove = 0      // 유효한 move 만 측정하여 나중에 삭제 인형 수 계산
    
    for moveIndex in moves {
        for boardIndex in 0..<board.count{ // 0 이 아니면 값을 basket에 저장 후, 지움
            if(boardArr[boardIndex][moves[moveIndex] - 1] != 0){
                basketArr.append(boardArr[boardIndex][moves[moveIndex] - 1])
                boardArr[boardIndex][moves[moveIndex] - 1] = 0
                countValidMove += 1
                break
            }
        }// 겹치면 삭제
        if(basketArr.last == basketArr[basketArr.endIndex - 2]){
            basketArr.popLast()
            basketArr.popLast()
        }
    }
    print(basketArr)
    return countValidMove - basketArr.count + 2
}
