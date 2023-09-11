//
//  _501_FindMode.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/find-mode-in-binary-search-tree/
struct _501_FindMode {
    func findMode(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [Int]() }
        var res = [Int]()
        var stack = [TreeNode]()
        var cur: TreeNode! = root
        var pre = Int.min
        var count = 1
        var maxCount = 1
        while !stack.isEmpty || cur != nil {
            if cur != nil {
                stack.append(cur)
                cur = cur.left
            } else {
                cur = stack.removeLast()
                if pre == Int.min {
                    pre = cur.val
                    res.append(pre)
                } else {
                    if pre == cur.val {
                        count += 1
                    } else {
                        count = 1
                    }
                    pre = cur.val
                    if count == maxCount {
                        if res.last != cur.val {
                            res.append(cur.val)
                        }
                    } else if (count > maxCount) {
                        maxCount = count
                        res.removeAll()
                        res.append(cur.val)
                    }
                }
                cur = cur.right
            }
        }
        return res
    }
}
