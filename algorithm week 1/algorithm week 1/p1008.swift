//
//  p1008.swift
//  algorithm week 1
//
//  Created by Lia on 2020/11/06.
//

import Foundation

func printDivision () {

    let inputArray = readLine()!.split(separator: " ").map{ Double($0)!}
    let numA = inputArray[0]
    let numB = inputArray[1]

    print(numA / numB)
}
