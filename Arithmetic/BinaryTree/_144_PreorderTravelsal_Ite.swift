//
//  _144_PreorderTravelsal_Ite.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-preorder-traversal/
// 前序遍历（使用迭代的方式）。可以使用array来代替stack。push就是arr.append、pop就是arr.removeLast
// 前序遍历其实就是中在前，先打印中，然后打印左，然后打印右。
// 那么我们先把头入栈、然后有右，先入右，然后有左，再入左。那么就可以做到左先出栈了。
struct _144_PreorderTravelsal_Ite {
    
    
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else {
            return res
        }
        var stack = [root]
        while !stack.isEmpty {
            let node = stack.removeLast()
            if node.right != nil {
                stack.append(node.right!)
            }
            if node.left != nil {
                stack.append(node.left!)
            }
            res.append(node.val)
        }
        return res
    }
}
