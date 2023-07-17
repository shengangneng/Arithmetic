//
//  InsertSort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

struct InsertSort: SortProtocol {
    // 插入排序，往前对比，如果找到合适的地方，就插入
    static func sort(arr: [Int]) -> [Int] {
        let count = arr.count
        var sortArr = arr
        
        for i in 1..<count {
            let value = sortArr[i];
            var cur = i;
            
            while (cur > 0 && value < sortArr[cur - 1]) {
                sortArr[cur] = sortArr[cur - 1]
                cur -= 1
            }
            sortArr[cur] = value
        }
        
        return sortArr
    }
}
