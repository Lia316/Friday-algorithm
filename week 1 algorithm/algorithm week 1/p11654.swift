//
//  p11654.swift
//  algorithm week 1
//
//  Created by Lia on 2020/11/06.
//

import Foundation

func convertASCII() {
    let letter = readLine()!

    print(UnicodeScalar(letter)!.value)
}
