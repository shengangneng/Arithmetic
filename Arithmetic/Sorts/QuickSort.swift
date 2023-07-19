//
//  QuickSort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/19.
//

import Foundation

struct QuickSort: SortProtocol {
    
    static func sort(arr: [Int]) -> [Int] {
        var mArr = arr
        quickSort(&mArr, low: 0, high: mArr.count - 1)
        return mArr
    }
    
    private static func quickSort(_ arr: inout [Int], low: Int, high: Int) {
        if low < high {
            let p = partition(&arr, low: low, high: high);
            // 左边递归排序
            quickSort(&arr, low: 0, high: p-1);
            // 右边递归排序
            quickSort(&arr, low: p+1, high: high);
        }
    }

    // 将数组分成两部分，左边部分小于pivot key的值，右边部分大于pivot key的值
    private static func partition(_ arr: inout [Int], low: Int, high: Int) -> Int {
        var low = low;
        var high = high;
        // 轴点值先取出来
        let pivotVal = arr[low];
        
        while low < high {
            // 循环右边，直到小于pivotKey
            while low < high && arr[high] >= pivotVal {
                high -= 1;
            }
            arr[low] = arr[high];
            
            // 开始从 循环左边，直到大于pivotKey
            while low < high && arr[low] <= pivotVal {
                low += 1;
            }
            arr[high] = arr[low];
        }
        
        // 将pivot key放置到中间的位置，返回划分的位置
        arr[low] = pivotVal;
        return low;
    }
    
    
}
