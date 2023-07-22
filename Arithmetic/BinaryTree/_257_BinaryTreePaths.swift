//
//  _257_BinaryTreePaths.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/22.
//

import Foundation

struct _257_BinaryTreePaths {
    
    // 迭代
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var res = [String]()
        guard let root = root else {
            return res
        }
        var stack = [root]
        var strStack = ["\(root.val)"]
        while !stack.isEmpty {
            let node = stack.removeLast()
            let str = strStack.removeLast()
            if node.left == nil && node.right == nil {
                res.append(str)
            }
            if node.right != nil {
                stack.append(node.right!)
                strStack.append("\(str)->\(node.right!.val)")
            }
            if node.left != nil {
                stack.append(node.left!)
                strStack.append("\(str)->\(node.left!.val)")
            }
        }
        return res
    }
    
    
    // 递归
//    func binaryTreePaths(_ root: TreeNode?) -> [String] {
//        var res = [String]()
//        guard let root = root else {
//            return res
//        }
//        var path = [root]
//        _binaryTreePaths(root, &path, &res)
//        return res
//    }
//    func _binaryTreePaths(_ root: TreeNode?, _ path: inout [TreeNode], _ res: inout [String]) {
//        if root?.left == nil && root?.right == nil {
//            var str = ""
//            let count = path.count
//            for i in 0..<count {
//                let node = path[i]
//                if 0 == i {
//                    str.append("\(node.val)")
//                } else {
//                    str.append("->\(node.val)")
//                }
//            }
//            res.append(str)
//        }
//        if let left = root?.left {
//            path.append(left)
//            _binaryTreePaths(left, &path, &res)
//            path.removeLast()
//        }
//        if let right = root?.right {
//            path.append(right)
//            _binaryTreePaths(right, &path, &res)
//            path.removeLast()
//        }
//    }
}
