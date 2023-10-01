//
//  _28_RecoveryNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation

/*
 对于一个连续正整数组成的序列，可以将其拼接成一个字符串，
 -个字符串，再将字符串里的部分字符打乱顺序。如序列89 10 11 12，拼接成的
 字符串为89101112，打乱一部分字符后得到90811211，原来的正整数10就被拆成了0和1。现给定一个按如上规则得到的打乱字符
 的字符串，请将其还原成连续正整数序列，并输出序列中最小的数字.
 输入描述
 输入一行，为打乱宇符的宇符串和正整数序列的长度，两者间用空格分隔，字符串长度不超过200，正整数不超过1000，保证输入
 可以还原成唯一序列，
 输出描述
 输出一个数字，为序列中最小的数字
 示例1：
 输入
 19801211 5
 输出
 8
 说明：正常的数字序列为89101112这5个数字，最小数字为8
 */

/*
 恢复成连续正整数，然后输出最小的那个数字
 字符串长度不超过200 --> 说明长度2不可能出现连续100个数字，长度3不会超过70个数
 分析：比如（19801211 5）长度为8，然后只有5个数字，无法整除，说明有跨度的数字
 分析：比如 11 12 13 14 15，出现最多的数字是1，超过5次，说明1肯定是高位，
 分析：比如 995 996 997 998 999 1000 6，19%6=1，19/6=3，说明出现一个4位的数字，其余是3位
 分析：比如 28 29 30 31 32 33 34 35 36 37 38 39 40 13，数字超过10
 分析：比如 29～105 76 --> 29到99是70个数，70*2+5*3=155，155%76=15，165/75=2，说明
 
 情况1:不能整除
 情况2:能整除
 */
class _28_RecoveryNumber {
    func test(_ input: String) {
        let array = input.split(separator: " ")
        let str = array[0]
        let chars = Array(str)
        let count = Int(String(array[1]))!
        
        let mo = str.count % count
        if mo == 0 {
            // 情况1:能整除（说明所有数字都是同等长度）
            let all = str.count / count
            if all == 1 {
                // 所有长度都是1
                print(chars.compactMap { Int(String($0)) }.sorted()[0])
            } else if all == 2 {
                // 所有长度都是2（不超过100个）10～99
                // 比如：28 29 30 31 32 33 34 35 36 37 38 39 40 13 超过10个，说明数字最多的数字超过了
                // 10个（3），还有3个数字是范围外的
                var map = [Character:Int]()
                for c in chars {
                    if map[c] == nil {
                        map[c] = 1
                    } else {
                        map[c]! += 1
                    }
                }
                let ori = map
                var cou = 0
                var minKey = 0
                for (key, value) in ori {
                    if value > 10 {
                        map.removeValue(forKey: key)
                        cou += 1
                        minKey = min(minKey, Int(String(key))!)
                    }
                }
                let rest = count - cou * 10
                if rest == 0 {
                    print("\(minKey)0")
                } else {
                    
                }
                
            } else {
                // 所有长度都是3（不超过70个）100～170
            }
        } else {
            // 情况2:不能整除（说明有mo个数是长度多一位的）
            let most = str.count / count
            print("\(Int(pow(10, Double(most))) - (count - mo))")
        }
    }
}


/*
 import functools
 import sys
 from collections import Counter, defaultdict
 import copy
 from itertools import permutations
 import re
 import math
 import sys
 from queue import Queue
  
  
 data = input().split()
 str = data[0]
 k = int(data[1])
  
  
 # 比较两个map是否相同
 def cmp(origin_char_map , window_char_map ):
     for c in origin_char_map :
         if window_char_map .get(c) is None or window_char_map [c] != origin_char_map [c]:
             return False
     return True
  
 # 传入num，让num中的字符串在map中+1或者-1
 def cal(num, window_char_map , isAdd):
     for c in num:
         window_char_map [c] = window_char_map .get(c, 0) + (1 if isAdd else -1)
  
  
  
 origin_char_map  = {}
 for c in s:
     origin_char_map [c] = origin_char_map .get(c, 0) + 1
  
 # 将str中的字符全部存入map中。
 window_char_map  = {}
 for i in range(1, k + 1):
     cal(str(i), window_char_map , True)
  
  
 if cmp(origin_char_map , window_char_map ):
     print(1)
 else:
     for i in range(2, 1000 - k + 2):
         cal(str(i - 1), window_char_map , False)
         cal(str(i + k - 1), window_char_map , True)
  
         # 比较
         if cmp(origin_char_map , window_char_map ):
             print(i)
             break
 
 
 
 
 */
