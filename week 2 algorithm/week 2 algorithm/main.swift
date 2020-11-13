//
//  main.swift
//  week 2 algorithm
//
//  Created by Lia on 2020/11/13.
//

import Foundation


//var arr = [60,70,80,90,100]
//print(arr.endIndex) //5
//print(arr[arr.endIndex - 1]) //error! out of range

let testBoard = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let testMove = [1,5,3,5,1,2,1,4]

print(solution2(testBoard, testMove))
