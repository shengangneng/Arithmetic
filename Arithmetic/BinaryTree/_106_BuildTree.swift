//
//  _106_BuildTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
struct _106_BuildTree {
    // 中序和后序构建二叉树
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        return travasal(postorder, 0, postorder.count, inorder, 0, inorder.count)
    }
    
    func travasal(_ postorder: [Int], _ postorderBegin: Int, _ postorderEnd: Int,
                  _ inorder: [Int], _ inorderBegin: Int, _ inorderEnd: Int) -> TreeNode? {
        if postorderEnd == postorderBegin { return nil}
        let rootVal = postorder[postorderEnd - 1]
        let root = TreeNode(rootVal)
        if postorderEnd - postorderBegin == 1 { return root }
        var inorderIndex = 0
        if let index = inorder.firstIndex(of: rootVal) {
            inorderIndex = index
        }
        let length = inorderIndex - inorderBegin
        root.left = travasal(postorder, postorderBegin, postorderBegin + length, inorder, inorderBegin, inorderIndex)
        root.right = travasal(postorder, postorderBegin + length, postorderEnd - 1, inorder, inorderIndex + 1, inorderEnd)
        return root
    }
}
