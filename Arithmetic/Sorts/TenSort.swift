//
//  File.swift
//  
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

struct TenSort {
    
    // 冒泡排序：两两比较，大的排后面
    func bubbleSort(arr: [Int]) -> [Int] {
        var sortArr = arr
        let count = arr.count
        for i in 0..<count {
            for j in 1..<(count - i) {
                if (sortArr[j] < sortArr[j - 1]) {
                    sortArr.swapAt(j, j - 1)
                }
            }
        }
        
        return sortArr
    }
    
    // 选择排序：每一轮，选择最小的排在前面
    func selectionSort(arr: [Int]) -> [Int] {
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
    
    
    // 插入排序
    func insertSort(arr: [Int]) -> [Int] {
        var sortArr = arr
        let count = arr.count
        
        for i in 0..<count {
            let value = sortArr[i]
            var cur = i
            while (cur > 0 && value < sortArr[cur - 1]) {
                sortArr[cur] = sortArr[cur - 1]
                cur -= 1
            }
            sortArr[cur] = value
        }
        
        return sortArr
    }
    
    // 希尔排序，不同的步长进行排序，当步长为1的排好后，整个数组就排好了
    func shellSort(arr: [Int]) -> [Int] {
        func sortAt(step: Int, arr: inout [Int]) {
            let count = arr.count
            for i in 0..<step {
                for j in stride(from: i+step, through: count - 1, by: step) {
                    let value = arr[i]
                    var cur = j
                    while (cur > i && value < arr[cur - step]) {
                        arr[cur] = arr[cur - step]
                        cur -= 1
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
    
    // 快速排序
    func quickSort(arr: [Int]) -> [Int] {
        
        
        
        
        return []
    }
    
    // 堆排序
    func heatSort(arr: [Int]) -> [Int] {
        
        
        
        
        return []
    }
    
    
    
}
