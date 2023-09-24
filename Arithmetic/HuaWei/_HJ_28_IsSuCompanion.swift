//
//  _HJ_28_IsSuCompanion.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _HJ_28_IsSuCompanion {
    func test(_ number: String, _ string: String) {
//        guard let string = readLine() else {
//            print(0)
//            return
//        }
        guard let count = Int(number) else {
            print(0)
            return
        }
        let parts = string.split(separator: " ")
        let nums = parts.compactMap { Int($0) }

        // v1: 当前数字，v2: 当前存入的index数组，v3: 剩余index数组
        var queue = [([Int], [Int])]()     //
        var indexs = [Int]()    // 保存所有index
        for i in 0..<count {
            indexs.append(i)
        }
        for i in 0..<count {
            var rest = indexs
            rest.remove(at: i)
            queue.append(([i], rest))
        }
        var res = [[Int]]()
        var level = 1
        while !queue.isEmpty {
            level += 1
            let n = queue.count
            for _ in 0..<n {
                let (index, rest) = queue.removeFirst()
                for j in 0..<rest.count {
                    var ids = index
                    ids.append(rest[j])
                    var rss = rest
                    rss.remove(at: j)
                    queue.append((ids, rss))
                    if level == count {
                        res.append(ids)
                    }
                }
            }
            if level == count {
                break
            }
        }
        print(res)
        let map = [Int:Int]()   // 记录避免重复
        for arr in res {
            
        }
    }
}
