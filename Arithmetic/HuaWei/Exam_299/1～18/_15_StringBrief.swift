//
//  _15_StringBrief.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 
 给定一个字符串的摘要算法，请输出给定字符串的摘要值
 1、去除字符串中非字母的符号
 2、如果出现连续字符(不区分大小写)，则输出: 该字符 (小) + 连续出现的次数
 3、如果是非连续的字符(不区分大小写)，则输出: 该字符(小写)该字母之后字符串中出现的该字符的次数
 4、对按照以上方式表示后的字符串进行排序:字母和紧随的数字作为一组进行排序，数字大的在前，数字相同的则按字母进行排序，字母小的在前。
 
 示例1
 输入:
 aabbcc
 输出:
 a2b2c2
 示例2
 输入:
 bAaAcBb
 输出:
 a3b2b2c0
 说明:
 第一个b非连续字母，该字母之后字符串中还出现了2次(最后的两个Bb)，所以输出b2a连续出现3次，输出a3c非连续，该字母之后字符串再没有出现过c，输出c0Bb连续2次，输出b2对b2a3c0b2进行排序，最终输出a3b2b2c0
 
 【64分钟】
 
 */
class _15_StringBrief {
    func test(_ input: String) {
        let chars = Array(input)
        // 26个字母
        var words = Array(repeating: "", count: 26)
        var map = [String:Int]()
        for c in chars {
            let str = String(c).lowercased()
            if map[str] == nil {
                map[str] = 1
            } else {
                map[str]! += 1
            }
        }
        
        for (c, _) in map {
            let index = Character(c).asciiValue! - Character("a").asciiValue!
            
            var startIndex = -1
            var preIndex = -1
            var addString = ""
            var beforeCount = 0
            for j in 0..<(chars.count + 1) {
                let cur = j >= chars.count ? "" : String(chars[j]).lowercased()
                if cur == c {
                    if preIndex == -1 {
                        preIndex = j
                        startIndex = j
                    } else if j - preIndex == 1 {
                        // 如果当前跟上一个相同，那么累加1
                        preIndex = j
                    }
                    beforeCount += 1
                } else {
                    if preIndex == -1 {
                        continue
                    }
                    // 如果当前跟上一个不同
                    if preIndex - startIndex > 0 {
                        addString.append("\(c)\(preIndex - startIndex + 1)")    // a3
                    } else {
                        let restCount = map[c]! - beforeCount
                        addString.append("\(c)\(restCount)")
                    }
                    startIndex = -1
                    preIndex = -1
                    if map[c]! - beforeCount <= 0 {
                        break
                    }
                }
            }
            words[Int(index)] = addString
        }
        
        var res = ""
        for str in words {
            if str.count > 0 {
                res.append(str)
            }
        }
        print(res)
    }
}
