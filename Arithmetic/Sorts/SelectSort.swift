//
//  SelectionSort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

struct SelectSort : SortProtocol {
    // 选择排序，选择最小的放在前面
    static func sort(arr: [Int]) -> [Int] {
        var sortArr = arr
        let count = arr.count
        
        for i in 0..<count {
            var minIndex = i
            for j in i..<count {
                if sortArr[j] < sortArr[minIndex] {
                    minIndex = j
                }
            }
            if minIndex != i {
                sortArr.swapAt(minIndex, i)
            }
        }
        
        return sortArr
    }
}
