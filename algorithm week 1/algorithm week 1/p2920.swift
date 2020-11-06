//
//  p2920.swift
//  algorithm week 1
//
//  Created by Lia on 2020/11/06.
//

import Foundation

//enum performance : String {
//    case ascending = "1 2 3 4 5 6 7 8"
//    case descending = "8 7 6 5 4 3 2 1"
//}

func printPerformance() {
    let readPerformancec = readLine()!

    switch readPerformancec {
    case "1 2 3 4 5 6 7 8":
//    case performance.ascending :   // 뭐지 왜 안될까
        print("ascending")
    case "8 7 6 5 4 3 2 1" :
        print("descending")
    default:
        print("mixed")
    }
}
