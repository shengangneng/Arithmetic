//
//  _HJ_24_HeChangeTuan.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/23.
//

import Foundation

// https://www.nowcoder.com/practice/6d9d69e3898f45169a441632b325c7b4?tpId=37&tqId=21247&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3Fpage%3D1%26tpId%3D37%26type%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=

// 其实就是等同于求：左最长上升序列 和 右往左最长下降序列
struct _HJ_24_HeChangeTuan {
    func test(_ input: String, _ astr: String?) {
        
        let n = Int(input)!
        let arraystr = astr
        let nums = arraystr!.split(separator: " ").compactMap { Int($0) }
        // 1、定义dp数组，并初始化数组所有元素为1
        var dpl = Array(repeating: 1, count: nums.count)
        var dpr = Array(repeating: 1, count: nums.count)

        // 从左到右
        for i in 0..<n {        // 终点
            for j in 0..<i {    // 起点
                if nums[i] > nums[j] {  // 如果当前终点的值，是比j的值要大的，那么i的结果，肯定是j最长结果的基础上再+1
                    dpl[i] = max(dpl[i], dpl[j] + 1)
                }
            }
        }
        // 从右到左
        for i in (0...(n - 1)).reversed() {        // 终点
            for j in (i...(n - 1)).reversed() {    // 起点：结尾
                if nums[i] > nums[j] {
                    dpr[i] = max(dpr[i], dpr[j] + 1)
                }
            }
        }
        var maxVal = 0
        for i in 0..<n {    // 遍历数组每个index，看看这个点为中心，左到中心，中心到右，最长的节点长度（由于中心点重复算进去了，所以要-1）
            if maxVal < dpl[i] + dpr[i] - 1 {
                maxVal = dpl[i] + dpr[i] - 1
            }
        }
        print(n - maxVal)
    }
}
