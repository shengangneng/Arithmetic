//
//  _29_AlibabaFindGold_5.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation

class _29_AlibabaFindGold_5 {
    
    // 比如2,10,-3,-8,40,5    4
    func test(_ input: String, _ input2: String) {
        let array = input.split(separator: ",").compactMap { Int(String($0)) }
        let count = Int(input2)!
        
        // 一开始取前4个数字的和
        var sum = 0
        for i in 0..<count {
            sum += array[i]
        }
        
        var res = sum
        // 从第一个数字开始走，因为第0个数字开始的count总和已经存在sum里面了
        for i in 1..<(array.count - count + 1) {
            // 由于中间的数字肯定是相等的，只需要第一个和最后一个位置于前一个位置差值处理一下即可
            sum -= array[i - 1] // 丢弃前一个数字
            sum += array[i + count - 1] // 加上下一个数字
            res = max(res, sum)
        }
        
        print(res)
    }
//    func test(_ input: String, _ input2: String) {
//        let array = input.split(separator: ",").compactMap { Int(String($0)) }
//        let count = Int(input2)!
//        var res = Int.min
//        for i in 0..<(array.count - count) {
//            var sum = 0
//            for j in i...(count - 1 + i) {
//                sum += array[j]
//            }
//            res = max(res, sum)
//        }
//        print(res)
//    }
}
