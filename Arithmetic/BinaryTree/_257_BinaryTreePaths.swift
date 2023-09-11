//
//  _257_BinaryTreePaths.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/22.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-paths/
struct _257_BinaryTreePaths {
    
    // 迭代
//    func binaryTreePaths(_ root: TreeNode?) -> [String] {
//        var res = [String]()
//        guard let root = root else {
//            return res
//        }
//        var stackNode = [TreeNode]()
//        stackNode.append(root)
//
//        var stackStr = [String]()
//        stackStr.append("\(root.val)")
//
//        while !stackNode.isEmpty {
//            let node = stackNode.popLast()!
//            let str = stackStr.popLast()!
//            if node.left == nil && node.right == nil {
//                res.append(str)
//            }
//            if let left = node.left {
//                stackNode.append(left)
//                stackStr.append("\(str)->\(left.val)")
//            }
//            if let right = node.right {
//                stackNode.append(right)
//                stackStr.append("\(str)->\(right.val)")
//            }
//        }
//        return res
//    }
    
    
    // 递归
//    func binaryTreePaths(_ root: TreeNode?) -> [String] {
//        var res = [String]()
//        guard let root = root else { return res }
//        var path = [Int]()
//        _binaryTreePaths(root, path: &path, res: &res)
//        return res
//    }
//    func _binaryTreePaths(_ root: TreeNode, path: inout [Int], res: inout [String]) {
//        path.append(root.val)
//        if root.left ==  nil && root.right == nil {
//            var str = ""
//            for i in 0 ..< path.count - 1 {
//                str.append("\(path[i])->")
//            }
//            str.append("\(path.last!)")
//            res.append(str)
//            return
//        }
//        if let left = root.left {
//            _binaryTreePaths(left, path: &path, res: &res)
//            path.removeLast()
//        }
//        if let right = root.right {
//            _binaryTreePaths(right, path: &path, res: &res)
//            path.removeLast()
//        }
//    }
    
    
    // 递归
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var res = [String]()
        guard let root = root else { return res }
        var path = [Int]()
        _binaryTreePaths(root, &path, &res)
        return res
    }
    func _binaryTreePaths(_ root: TreeNode, _ path: inout [Int], _ res: inout [String]) {
        path.append(root.val)
        // 叶子结点
        if root.left == nil && root.right == nil {
            var str = ""
            for i in 0..<path.count {
                let val = path[i]
                str.append(0 == i ? "\(val)" : "->\(val)")
            }
            res.append(str)
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
//    func binaryTreePaths(_ root: TreeNode?) -> [String] {
//        var res = [String]()
//        guard let root = root else { return res }
//        var stack = [root]
//        var strStack = ["\(root.val)"]
//        while !stack.isEmpty {
//            let node = stack.removeLast()
//            let str = strStack.removeLast()
//            if node.right != nil {
//                stack.append(node.right!)
//                strStack.append("\(str)->\(node.right!.val)")
//            }
//            if node.left != nil {
//                stack.append(node.left!)
//                strStack.append("\(str)->\(node.left!.val)")
//            }
//            if node.left == nil && node.right == nil {
//                res.append(str)
//            }
//        }
//        return res
//    }
}
