//
//  _19_AlibabaFindGold_2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 贫如洗的樵夫阿里巴巴在去砍柴的路上，无意中发现了强盗集团的藏宝地，藏宝地有编号从0~八的箱子，每个箱子上面贴有箱子中藏有 金币Q的数量。
 从金币数量中选出一个数字集合，并销毁贴有这些数字的每个箱子，如果能销毁一半及以上的箱子，则返回这个数字集合的最小大
 输入描述
 一个数字字串，数字之间使用逗号分隔，例如: 6.6.6.6.3,3,3,1,1.5字串中数字的个数为偶数，并且个数>=1，<=100000; 每个数字>=1，<=100000.输出描述
 这个数字集合的最小大小，例如: 2示例1
 输入:
 1,1,1,1,3,3,3,6,6,8
 输出:
 2
 说明:
 选择集合[1.8，销毁后的结果数组为[3.3.3.6.6]，长度为 5，长度为原数组的一半。
 大小为 2 的可行集合还有[1.3].1.63.6]。
 选择6.8 集合是不可行的，它销毁后的结果数组为[1,1,1,1,3,3,3]，新数组长度大于原数组的二分之一。
 示例2
 输入:
 2,2,2,2
 输出:
 说明:
 我们只能选择集合2]，销毁后的结果数组为空
 
 
 */
class _19_AlibabaFindGold_2 {
    func test(_ input: String) {
        let array = input.split(separator: ",").compactMap { Int(String($0)) }
        let n = array.count
        var map = [Int:Int]()
        for num in array {
            if map[num] == nil {
                map[num] = 1
            } else {
                map[num]! += 1
            }
        }
        
        let half = n >> 1   // 半数量
        
        var countArray = [Int]()
        for (_, count) in map {
            countArray.append(count)
        }
        countArray = countArray.sorted(by: >)
        
        var res = 0
        var sum = 0
        for count in countArray {
            res += 1
            sum += count
            if sum >= half {
                break
            }
        }
        print(res)
    }
}
