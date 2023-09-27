//
//  _2862_BT_MaximumSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 1 * 16 * 81 = 4 * 4 * 9 * 9 = 36 * 36
// [35,45,29,16,42,49,25,19,46] 答案是97，why
class _2862_BT_MaximumSum {
    
//    func maximumSum(_ nums: [Int]) -> Int {
//        let n = nums.count
//        var res = 0, t = 0, j = nums.count
//        for i in 1..<n {
//            j = 1
//            t = 0
//            while i * j * j <= n {
//                let index = i * j * j - 1
//                let value = nums[index]
//                print("index = \(index), value = \(value)")
//                t += value
//                j += 1
//            }
//            res = max(res, t)
//        }
//        return res
//    }
    
    private var res = [[Int]]()
    private var path = [Int]()
    private var nums = [Int]()
    func maximumSum(_ nums: [Int]) -> Int {
        self.nums = nums
        dfs(0)
        
        var set: Set<Int> = []
        for i in 1...100 {
            set.insert(i * i)
        }
        var result = nums.max() ?? 0
        for p in res {
            let num1 = p[0] + 1
            let num2 = p[1] + 1
            let mul = num1 * num2
            if set.contains(mul) {
                print(num1, num2)
                let sum = nums[p[0]] + nums[p[1]]
                result = max(result, sum)
            }
        }
        return result
    }

    private func dfs(_ start: Int) {
        if path.count == 2 {
            res.append(path)
            return
        }

        let end = nums.count - (2 - path.count) + 1
        guard start <= end else { return }  // 剪枝
        for i in start..<end {
            path.append(i)
            dfs(i + 1)
            path.removeLast()
        }
    }
}
