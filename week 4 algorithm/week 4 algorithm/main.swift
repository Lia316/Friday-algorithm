//
//  main.swift
//  week 4 algorithm
//
//  Created by Lia on 2020/11/27.
//

import Foundation

// *************** 1. Two Sum  ******************

//let input1 = [2,7,11,15]
//let target1 = 9
//
//let input2 = [3,2,4]
//let target2 = 6
//
//let input3 = [3,3]
//let target3 = 6
//
//let test1 = Solution1()
//print(test1.twoSum(input1, target1))
//print(test1.twoSum(input2, target2))
//print(test1.twoSum(input3, target3))

// *************** 2. Reverse Integer ******************

//let test2 = Solution2()
//print(test2.reverse(-98750))

// *************** 3. Palindrome Number ******************

//let test3 = Solution3()
//print(test3.isPalindrome(12521))
//print(test3.isPalindrome(-12521))
//print(test3.isPalindrome(0))

// *************** 4. Roman to Integer ******************

//let test4 = Solution4()
//print(test4.romanToInt("MCMXCIV"))

// *************** 5. Longest Common Prefix ******************

//let input51 = ["flower","flow","flight"]
//let input52 = ["dog","racecar","car"]
//let input53 = [String]()
//
//let test5 = Solution5()
//print(test5.longestCommonPrefix(input51))
//print(test5.longestCommonPrefix(input52))
//print(test5.longestCommonPrefix(input53))

// *************** 6. Merge Two Sorted Lists ******************

let node3 = ListNode(4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

let nodeb3 = ListNode(4)
let nodeb2 = ListNode(3, nodeb3)
let nodeb1 = ListNode(1, nodeb2)

let list1 : ListNode? = nil
let list2 : ListNode? = nil

let list11 : ListNode? = nil
let list22 = ListNode()

let nodeA2 = ListNode(3)
let nodeA1 = ListNode(-9, nodeA2)

let nodeB2 = ListNode(7)
let nodeB1 = ListNode(5, nodeB2)


let test6 = Solution6()
print("긴장 타라 \n1st")
_ = test6.mergeTwoLists(node1, nodeb1)
test6.newList = nil
print("2nd")
_ = test6.mergeTwoLists(list1, list2)
test6.newList = nil
print("3rd")
_ = test6.mergeTwoLists(list11, list22)
test6.newList = nil
print("4th")
_ = test6.mergeTwoLists(nodeA1, nodeB1)
test6.newList = nil
print("The End~~")
