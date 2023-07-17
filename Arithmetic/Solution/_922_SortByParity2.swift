//
//  _922_SortByParity2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/sort-array-by-parity-ii/
struct _922_SortByParity2 {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var numsM = nums
        let count = numsM.count
        var ji = count
        var ou = count

        for index in 0..<count {
            if index % 2 == 0 && numsM[index] % 2 != 0 {
                // 偶数位置，但是放的是奇数 <--> 奇数位置，放的是偶数
                for j in (index..<ji).reversed() {
                    if j % 2 != 0 && numsM[j] % 2 == 0 {
                        ji = j
                        numsM.swapAt(index, j)
                        break
                    }
                }
            } else if index % 2 != 0 && numsM[index] % 2 == 0 {
                // 奇数位置，但是放的是偶数 <--> 偶数位置，放的是奇数
                for j in (index..<ou).reversed() {
                    if j % 2 == 0 && numsM[j] % 2 != 0 {
                        ou = j
                        numsM.swapAt(index, j)
                        break
                    }
                }

            } else {
                continue
            }
        }

        return numsM
    }
}
