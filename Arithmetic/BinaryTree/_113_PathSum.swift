//
//  _113_PathSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/path-sum-ii/
struct _113_PathSum {
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        return binaryTreePaths(root, targetSum)
    }
    
    func binaryTreePaths(_ root: TreeNode?, _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else { return res }
        var path = [Int]()
        _binaryTreePaths(root, &path, &res, target)
        return res
    }
    func _binaryTreePaths(_ root: TreeNode, _ path: inout [Int], _ res: inout [[Int]], _ target: Int) {
        path.append(root.val)
        // 叶子结点
        if root.left == nil && root.right == nil {
            var sum = 0
            for i in 0..<path.count {
                let val = path[i]
                sum += val
            }
            if sum == target {
                res.append(path)
            }
        }

        if let left = root.left {
            _binaryTreePaths(left, &path, &res, target)
            path.removeLast()
        }
        if let right = root.right {
            _binaryTreePaths(right, &path, &res, target)
            path.removeLast()
        }
    }
        
    // 迭代法
    func binaryTreePaths1(_ root: TreeNode?, _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else { return res }
        var stack = [root]
        var strStack = ["\(root.val)"]
        while !stack.isEmpty {
            let node = stack.removeLast()
            let str = strStack.removeLast()
            if node.left != nil {
                stack.append(node.left!)
                strStack.append("\(str),\(node.left!.val)")
            }
            if node.right != nil {
                stack.append(node.right!)
                strStack.append("\(str),\(node.right!.val)")
            }
            if node.left == nil && node.right == nil {
                var sum = 0
                var arr = [Int]()
                for item in str.components(separatedBy: ",") {
                    sum += Int(item) ?? 0
                    arr.append(Int(item) ?? 0)
                }
                if sum == target {
                    res.append(arr)
                }
            }
        }
        return res
    }
}
