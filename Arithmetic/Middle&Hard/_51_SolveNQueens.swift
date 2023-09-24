//
//  _51_SolveNQueens.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

struct _51_SolveNQueens {
    
    func solveNQueens(_ n: Int) -> [[String]] {
        if n < 1 { return [["Q"]] }
        var cols = Array(repeating: 0, count: n)
        var ways = [[String]]()
        place(0, &cols, &ways)
        return ways
    }

    // 从第row行开始摆放皇后
    private func place(_ row: Int, _ cols: inout [Int], _ ways: inout [[String]]) {
        // 如果行已经达到边界，说明全部摆满了，是一种答案
        if row >= cols.count {
            var way = [String]()
            for col in cols {
                var str = String(repeating: ".", count: cols.count)
                let range = NSMakeRange(col, 1)
                str = (str as NSString).replacingCharacters(in: range, with: "Q")
                way.append(str)
            }
            ways.append(way)
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
}
