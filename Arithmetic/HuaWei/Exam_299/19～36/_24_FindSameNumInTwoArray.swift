//
//  _24_FindSameNumInTwoArray.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 
 示例1:
 输入
 5,3,6,-8,0,11
 2,8,8,8,-1,15
 输出
 NULL
 说明
 两个整数数组没有同时出现的整数，输出NULL。
 
 示例2:
 输入:
 5,8,11,3,6,8,8,-1,11,2,11,11
 11,2,11,8,6,8,8,-1,8,15,3,-9,11
 输出
 1:-1,2,3,6
 3:8,11
 说明
 两整数数组中同时出现的整数为-1、2、3、6、8、11
 其中同时出现次数为1的整数为-1、2、3、6(升序排序)
 同时出现次数为3的整数为8、11(升序排序)
 先升序输出出现次数为1g整数，再升序输出出现次数为3的整数

 【33分钟】
 
 */
class _24_FindSameNumInTwoArray {
    func test(_ input1: String, _ input2: String) {
        var array1 = input1.split(separator: ",").compactMap { Int(String($0)) }
        var array2 = input2.split(separator: ",").compactMap { Int(String($0)) }
        
        var map = [Int:Int]()
        for num in array1 {
            if map[num] == nil {
                map[num] = 1
            } else {
                map[num]! += 1
            }
        }
        
        var same = [Int:Int]()
        var maxCount = 0    // 记录最大次数
        for num in array2 {
            if map[num] == nil {
                continue
            }
            if map[num]! >= 1 {
                map[num]! -= 1
                if same[num] == nil {
                    same[num] = 1
                } else {
                    same[num]! += 1
                    maxCount = max(maxCount, same[num]!)
                }
            }
        }
        if same.count == 0 {
            print("NULL")
            return
        }
        
        // [-1:1, 2:1, 3:1, 6:1, 8:3, 11:3]
        for i in 1...maxCount {
            var cur = [Int]()
            for (key, value) in same {
                if value == i {
                    cur.append(key)
                }
            }
            if cur.count > 0 {
                cur = cur.sorted()
                var res = "\(i)"
                for key in cur {
                    if res.count == 1 {
                        res.append(":\(key)")
                    } else {
                        res.append(",\(key)")
                    }
                }
                print(res)
            }
        }
    }
}



































