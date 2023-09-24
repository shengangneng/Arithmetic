//
//  _NQueens_0.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode-cn.com/problems/n-queens
struct _NQueens_0 {
    
    func placeQueens(_ n: Int) -> Int {
        if n < 1 { return 0 }
        var cols = Array(repeating: 0, count: n)
        var ways = 0
        place(0, &cols, &ways)
        return ways
    }
    
    // 从第row行开始摆放皇后
    private func place(_ row: Int, _ cols: inout [Int], _ ways: inout Int) {
        // 如果行已经达到边界，说明全部摆满了，是一种答案
        if row >= cols.count {
            ways += 1
            return
        }
        for col in 0..<cols.count {
            if (isValid(row, col, &cols)) {
                // 在第row行第col列摆放皇后
                cols[row] = col
                place(row + 1, &cols, &ways)
            }
        }
    }
    
    // 判断第row行，第col列是否可以摆放皇后
    private func isValid(_ row: Int, _ col: Int, _ cols: inout [Int]) -> Bool {
        for i in 0..<row {
            // 当前列已经有皇后
            if cols[i] == col { return false }
            // 斜线有皇后
            if (row - i == abs(col - cols[i])) { return false }
        }
        return true
    }
    
    // TODO: 打印函数，调试用
    private func show(_ cols: inout [Int]) {
        for row in 0..<cols.count {
            for col in 0..<cols.count {
                if cols[row] == col {
                    print("Q ", terminator: "")
                } else {
                    print(". ", terminator: "")
                }
            }
            print()
        }
    }
}
