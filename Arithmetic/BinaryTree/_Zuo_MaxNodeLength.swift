//
//  _MaxNodeLength.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// 左神递归套路 - 两个任意节点的最远距离（路径长度）
struct _Zuo_MaxNodeLength {
    
    private struct Info {
        var distance: Int
        var height: Int
        init(_ distance: Int,_ height: Int) {
            self.distance = distance
            self.height = height
        }
    }
    
    private func process(_ root: TreeNode?) -> Info {
        guard let root = root else { return Info(0, 0)}
        let left = process(root.left)
        let right = process(root.right)
        var height = max(left.height, right.height) + 1
        var distance = 0
        distance = max(max(left.distance, right.distance), left.height + right.height + 1)
        
        return Info(distance, height)
    }
    
    func maxDistance(_ root: TreeNode?) -> Int {
        return process(root).distance
    }
}
