//
//  _105_BuildTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
struct _105_BuildTree {
    
    // 前序和中序构建二叉树
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        return travasal(preorder, 0, preorder.count, inorder, 0, inorder.count)
    }
    
    
    func travasal(_ preorder: [Int], _ preorderBegin: Int, _ preorderEnd: Int, _ inorder: [Int], _ inorderBegin: Int, _ inorderEnd: Int) -> TreeNode? {
        if preorderEnd == preorderBegin { return nil}
        let rootVal = preorder[preorderBegin]
        let root = TreeNode(rootVal)
        if preorderEnd - preorderBegin == 1 { return root }
        var inorderIndex = 0
        if let index = inorder.firstIndex(of: rootVal) {
            inorderIndex = index
        }
        let length = inorderIndex - inorderBegin
        root.left = travasal(preorder, preorderBegin + 1, preorderBegin + 1 + length, inorder, inorderBegin, inorderIndex)
        root.right = travasal(preorder, preorderBegin + 1 + length, preorderEnd, inorder, inorderIndex + 1, inorderEnd)
        return root
    }

    
    // 前序和中序构建二叉树
//    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
//        return helper(preorder: preorder,
//                      preorderBegin: 0,
//                      preorderEnd: preorder.count,
//                      inorder: inorder,
//                      inorderBegin: 0,
//                      inorderEnd: inorder.count)
//    }
//    func helper(preorder: [Int], preorderBegin: Int, preorderEnd: Int,
//                inorder: [Int], inorderBegin: Int, inorderEnd: Int) -> TreeNode? {
//        if preorderBegin == preorderEnd {
//            return nil
//        }
//
//        // 前序遍历数组的第一个元素作为分割点
//        let rootValue = preorder[preorderBegin]
//        let root = TreeNode(rootValue)
//
//
//        if preorderEnd - preorderBegin == 1 {
//            return root
//        }
//
//        var inorderIndex = 0 // 从中序遍历数组中找到根节点的下标
//        if let ind = inorder.firstIndex(of: rootValue) {
//            inorderIndex = ind
//        }
//
//        // 递归
//        root.left = helper(preorder: preorder,
//                           preorderBegin: preorderBegin + 1,
//                           preorderEnd: preorderBegin + 1 + (inorderIndex - inorderBegin),
//                           inorder: inorder,
//                           inorderBegin: inorderBegin,
//                           inorderEnd: inorderIndex)
//        root.right = helper(preorder: preorder,
//                            preorderBegin: preorderBegin + 1 + (inorderIndex - inorderBegin),
//                            preorderEnd: preorderEnd,
//                            inorder: inorder,
//                            inorderBegin: inorderIndex + 1,
//                            inorderEnd: inorderEnd)
//        return root
//    }
}
