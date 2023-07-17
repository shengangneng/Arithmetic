//
//  ShellSort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

struct ShellShort : SortProtocol {
    // 希尔排序：步长序列比如n = 16【8 4 2 1】, 希尔排序是对插入排序的一种优化。
    static func sort(arr: [Int]) -> [Int] {
        func sortAt(step: Int, arr: inout [Int]) {
            let count = arr.count
            for i in 0..<step {
                for j in stride(from: i+step, through: count - 1, by: step) {
                    let value = arr[j]
                    var cur = j
                    while (cur > i && value < arr[cur - step]) {
                        arr[cur] = arr[cur - step]
                        cur -= step
                    }
                    arr[cur] = value
                }
            }
        }
        
        var count = arr.count
        var sortArr = arr
        var stepArr = [Int]()
        while (count / 2 > 0) {
            count = count / 2
            stepArr.append(count)
        }
        
        for i in stepArr {
            sortAt(step: i, arr: &sortArr)
        }
        
        return sortArr
    }
    
//    // 根据特定步长序列排序
    private static func sortAt(step: Int, arr: inout [Int]) {
        let count = arr.count
        for i in 0..<step {
            for j in stride(from: i+step, through: count - 1, by: step) {
                var cur = j
                while (cur > i && arr[cur] < arr[cur - step]) {
                    arr.swapAt(cur, cur - step)
                    cur -= step
                }
            }
        }
    }
}
