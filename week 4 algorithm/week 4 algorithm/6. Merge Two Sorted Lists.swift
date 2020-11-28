//
//  6. Merge Two Sorted Lists.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/28.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
    
func printNode(_ node: ListNode?) {
    var current = node
    while current?.next != nil {
        print("\(current?.val ?? 0) ->", terminator:" ")
        current = current?.next
    }
    if current == nil {print("nil")}
    else{ print(current?.val ?? 0)}
}

//*************************** problem 6 *******************************

class Solution6 {
    var newList: ListNode?
    
    func insert(value: Int){
        let head = newList
        
        if head == nil {
            newList = ListNode(value)
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = ListNode(value)
        }
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var checkOne = l1
        var checkTwo = l2
        
        while checkOne != nil && checkTwo != nil {
            if checkOne?.val ?? 0 <= checkTwo?.val ?? 0 {
                insert(value: checkOne?.val ?? 0)
                checkOne = checkOne?.next
            } else {
                insert(value: checkTwo?.val ?? 0)
                checkTwo = checkTwo?.next
            }
        }
        // 한 쪽 다 끝나고 나머지 한쪽이 여럿 남으면 오류 뜸. while 문으로 하나 남은 거 계속 돌려야함
        var lastCheck = checkOne != nil ? checkOne : checkTwo
        
        while lastCheck != nil {
            insert(value: lastCheck?.val ?? 0)
            lastCheck = lastCheck?.next
        }
        print("newList: ", terminator: "")
        printNode(newList)
        return newList
    }
}
