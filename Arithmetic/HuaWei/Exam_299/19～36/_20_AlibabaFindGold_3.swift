//
//  _20_AlibabaFindGold_3.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 
 贫如洗的樵夫阿里巴巴在去砍柴的路上，无意中发现了强盗集团的藏宝地，藏宝地有编号从0~N的箱子，每个箱子上面贴有一/字。阿里巴巴念出一个咒语数字，查看宝箱是否存在两个不同箱子，这两个箱子上贴的数字相同，同时这两个箱子的编号之差的绝对值小于等于咒语数字，如果存在这样的一对宝箱，请返回最先找到的那对宝箱左边箱子的编号，如果不存在则返回-1。输入描述:
 第一行输入一个数字字串，数字之间使用逗号分隔，例如: 1,2,3,1字串中数字个数>=1，<=100000;每人数字值>=-100000<=100000:
 第二行输入咒语数字，例如: 3，咒语数字>=1，<=100000输出描述:
 存在这样的一对宝箱，请返回最先找到的那对宝箱左边箱子的编号，如果不存在则返回-1示例1
 输入:
 6,3,1,6
 3
 输出:
 0
 示例2
 输入:
 5,6,7,5,6,7
 2
 输出:
 -1
 
 输入:
 5,6,7,5,6,7,5,6,5,6
 2
 输出:
 -1

 【21分钟】
 
 */
class _20_AlibabaFindGold_3 {
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
