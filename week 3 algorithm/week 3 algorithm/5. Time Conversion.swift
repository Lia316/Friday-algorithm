//
//  5. Time Conversion.swift
//  week 3 algorithm
//
//  Created by Lia on 2020/11/20.
//

import Foundation

func timeConversion(s: String) -> String {
    let noon = s[s.index(s.endIndex, offsetBy: -2)]
    var temp = Array(s).map({String($0)})
    
    temp.remove(at: 8)
    temp.remove(at: 8)
    
    // 오후고, 12시가 아니면 12시간을 더해준다
    if noon == "P" && !(temp[0] == "1" && temp[1] == "2") {
        temp[0] = String( Int(temp[0])! + 1)
        temp[1] = String( Int(temp[1])! + 2)
    }
    // 오전 12시면, 00시로 바꿔준다
    else if (noon == "A" && temp[0] == "1" && temp[1] == "2") {
        temp[0] = "0"
        temp[1] = "0"
    }
    
    return temp.joined()
}
