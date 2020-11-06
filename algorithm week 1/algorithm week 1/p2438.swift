//
//  p2438.swift
//  algorithm week 1
//
//  Created by Lia on 2020/11/06.
//

import Foundation

func printLeftStar() {
    let inputArray = readLine()!.split(separator: "(")
    let numStar = Int(inputArray[0])! // !를 써야하나?
    
    for index in 1...numStar {
        for _ in 1...index {
            print("*", terminator:"")
        }
        print()
    }
}
