//
//  _21_AlibabaFindGold_4.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 贫如洗的椎夫阿里巴巴在去砍柴的路上，无意中发现了强盗集团的藏宝地，藏宝地有编号从0-N的子，每个箱子上面有一人数字，了排列成一个环，编号最大的箱子的下一个是编号为0的箱子。请输出每个箱了贴的数字之后的第一个比它大的数，如果不存在则输出-1。
 输入描述
 输入一个数字字串，数字之间使用逗号分隔，例如: 1,2,3,11s字串中数字个数 s10000:
 -100000≤每个数字值s100000
 输出描述
 下一个大的数列表，以逗号分隔，例如: 2,3,6,-1,6
 示例1:
 输入
 2,5,2
 输出
 5-1,5
 说明
 第一个2的下一个更大的数是5数字5找不到下一个更大的数·第二个2的下一个最大的数需要循环搜索，结果也是5
 示例2:
 输入
 3,4,5,6,3
 输出
 4,5,6,-1,4
 
 【略】
 
 */
class _21_AlibabaFindGold_4 {
    func test(_ input: String, _ magic: String) {
        let nums = input.split(separator: ",").compactMap { Int(String($0)) }
        let n = Int(magic)!
        
        // index , length
        var minRange = (-1, Int.max)
        var start = -1
        for i in 0..<nums.count {
            let num = nums[i]
            if num == nums[n] {
                if start == -1 {
                    start = i
                } else {
                    if i - start < minRange.1 {
                        minRange.0 = start
                        minRange.1 = i - start
                    }
                }
            }
        }
        print(minRange.1 <= n ? minRange.0 : -1)
    }
}
