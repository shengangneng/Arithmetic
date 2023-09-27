//
//  _2454_SecondGreaterElement.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

class _2454_SecondGreaterElement {
    
    /*
     [2,4,0,9,6]    temp用来过渡，保存stack1的内容
     
     第一轮过后：stack1 = [0] stack2 = []
     第二轮：nums[0] < nums[i]，于是temp = [0], stack1 = [1], stack2 = [0]
     第三轮：
     第四轮：
     第五轮：
     */
    
    func secondGreaterElement(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: -1, count: nums.count)
        var stack1 = [Int]() // 右边没有比当前更大的值的'下标'
        var stack2 = [Int]() // 右边有一个更大值的'下标'
        for i in 0..<nums.count {
            var temp = [Int]()

            while !stack2.isEmpty && nums[stack2.last!] < nums[i] {
                res[stack2.last!] = nums[i]
                stack2.removeLast()
            }

            while !stack1.isEmpty && nums[stack1.last!] < nums[i] {
                temp.append(stack1.last!)
                stack1.removeLast()
            }

            while !temp.isEmpty {
                stack2.append(temp.last!)
                temp.removeLast()
            }
            stack1.append(i)
            print("stack1 -- \(stack1)")
            print("stack2 -- \(stack2)")
        }
        return res
    }
    
    
//    func secondGreaterElement(_ nums: [Int]) -> [Int] {
//        // 处理元素只有2个的情况
//        if Set(nums).count <= 2 {
//            return Array(repeating: -1, count: nums.count)
//        }
//
//        // 处理全部都是逆序的情况
//        var pre = nums[0]
//        var desc = true
//        for i in 1..<nums.count {
//            let num = nums[i]
//            if num > pre {
//                desc = false
//                break
//            }
//        }
//        if desc {
//            return Array(repeating: -1, count: nums.count)
//        }
//
//        var res = [Int]()
//        for i in 0..<nums.count {
//            let num = nums[i]
//            var second = -1
//            guard (i + 1) < nums.count else {
//                res.append(second)
//                continue
//            }
//            var first = -1
//            for j in (i + 1)..<nums.count {
//                if second != -1 { break }
//                let cur = nums[j]
//                if cur > num {
//                    if first == -1 {
//                        first = cur
//                    } else if second == -1 {
//                        second = cur
//                    }
//                }
//            }
//            res.append(second)
//        }
//        return res
//    }
}
