//
//  BubbleSort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

struct BubbleSort : SortProtocol {
    
    // 冒泡排序：两两比较，把大的往后排
    static func sort(arr: [Int]) -> [Int] {
        let count = arr.count
        var sortArr = arr
        
        for i in 0..<count {
            for j in 1..<(count - i) {
                if (sortArr[j] < sortArr[j - 1]) {
                    sortArr.swapAt(j, j-1)
                }
            }
        }
        return sortArr
    }
    
}
