//
//  _112_HasPathSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/path-sum/
struct _112_HasPathSum {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        return binaryTreePaths(root).contains(targetSum)
    }
    
    func binaryTreePaths(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else { return res }
        var path = [Int]()
        _binaryTreePaths(root, &path, &res)
        return res
    }
    func _binaryTreePaths(_ root: TreeNode, _ path: inout [Int], _ res: inout [Int]) {
        path.append(root.val)
        // 叶子结点
        if root.left == nil && root.right == nil {
            var sum = 0
            for i in 0..<path.count {
                let val = path[i]
                sum += val
            }
            res.append(sum)
        }

        if let left = root.left {
            _binaryTreePaths(left, &path, &res)
            path.removeLast()
        }
        if let right = root.right {
            _binaryTreePaths(right, &path, &res)
            path.removeLast()
        }
    }
        
    // 迭代法
    func binaryTreePaths1(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else { return res }
        var stack = [root]
        var strStack = [root.val]
        while !stack.isEmpty {
            let node = stack.removeLast()
            let str = strStack.removeLast()
            if node.left != nil {
                stack.append(node.left!)
                strStack.append(str + node.left!.val)
            }
            if node.right != nil {
                stack.append(node.right!)
                strStack.append(str + node.right!.val)
            }
            if node.left == nil && node.right == nil {
                res.append(str)
            }
        }
        return res
    }
}
