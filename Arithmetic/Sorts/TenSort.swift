//
//  File.swift
//  
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://www.jianshu.com/p/e6d40bc05ef3
struct TenSort {
    
    // 1、冒泡排序：两两比较，大的排后面：O(n^2)、稳定排序
    // 0～N  0～N-1  0～N-2 ... 0-1
    func bubbleSort(arr: [Int]) -> [Int] {
        var res = arr
        let count = res.count
        for i in (1..<count).reversed() {
            for j in 1...i {
                if res[j - 1] > res[j] {
                    res.swapAt(j - 1, j)
                }
            }
        }
        return res
    }
    
    // 2、选择排序：每一轮，选择最小的排在前面：O(n^2)、稳定排序
    // 0～N  1～N  2～N ... N-1~N
    func selectionSort(arr: [Int]) -> [Int] {
        var res = arr
        let count = arr.count
        for i in 0..<count {
            var minIndex = i
            for j in (i+1)..<count {
                if res[minIndex] > res[j] {
                    minIndex = j
                }
            }
            res.swapAt(minIndex, i)
        }
        return res
    }
    
    
    // 3、插入排序
    // 0~0  0~1  0~2 ... 0~N
    func insertSort(arr: [Int]) -> [Int] {
        var res = arr
        let count = arr.count
        for i in 1..<count {
            // 记下当前值
            let value = res[i]
            var curIndex = i
            while curIndex > 0 && value < res[curIndex - 1] {
                // 并没有立即swap，而是前面的值覆盖当前值
                res[curIndex] = res[curIndex - 1]
                curIndex -= 1
            }
            res[curIndex] = value
        }
        return res
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
    
    // 归并排序（递归版本）：O(nLogn)、非稳定排序
    // 分为两半，两半都排好序（咋有序？递归到一个元素）。然后左右两个数组再合并（两个指针指向左右的头），谁小，把小的放入新数组。
    // 最后哪个到尾了。另一个数组的后面元素全部拷贝过来
    func mergeSort1(arr: [Int]) -> [Int] {
        var res = arr
        process(&res, 0, res.count - 1)
        return res
    }
    
    private func process(_ arr: inout [Int], _ L: Int, _ R: Int) {
        if L == R { return }
        let mid = L + ((R - L) >> 1)
        process(&arr, L, mid)
        process(&arr, mid + 1, R)
        merge(&arr, L, mid, R)
    }
    
    private func merge(_ arr: inout [Int], _ L: Int, _ M: Int, _ R: Int) {
        var help = Array(repeating: 0, count: R-L+1)
        var i = 0
        var p1 = L
        var p2 = M + 1
        while (p1 <= M && p2 <= R) {
            if arr[p1] <= arr[p2] {
                help[i] = arr[p1]
                i += 1
                p1 += 1
            } else {
                help[i] = arr[p2]
                i += 1
                p2 += 1
            }
        }
        while (p1 <= M) {
            help[i] = arr[p1]
            i += 1
            p1 += 1
        }
        while (p2 <= R) {
            help[i] = arr[p2]
            i += 1
            p2 += 1
        }
        for i in 0..<help.count {
            arr[L + i] = help[i]
        }
    }
    
    // 归并排序（非递归版本）
    // 步长从1、2、4、8、16。。。不断的排序完成。
    // 遍历数组，步长为1，左右组排好序
    // 遍历数组，步长为2，左右组的不断排好序。
    // 然后遍历数组，步长为4排好序
    // 然后步长为8排好序
    func mergeSort2(arr: [Int]) -> [Int] {
        
        return []
    }
    
    
    
    // 快速排序（选择一个轴点），小于等于的放左边（内部可以无序），大于等于的放右边（内部可以无序）
    func quickSort(arr: [Int]) -> [Int] {
        
        
        
        
        return []
    }
    
    // 堆排序
    func heatSort(arr: [Int]) -> [Int] {
        
        
        
        
        return []
    }
    
    
    
}
