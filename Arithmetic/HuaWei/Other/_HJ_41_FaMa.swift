//
//  _HJ_41_FaMa.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

/*
 
 怎么去重，用set集合。

 首先根据输入顺序，将砝码用数字序列表示，例如2个1g和1个2g，就用 1 1 2的序列表示；
 set序列用来表示加入当前砝码之前能产生的重量种类；
 set初始化为{0}；当第一个1g砝码放入时，则set中需要插入原先set中的所有元素+1g后的结果；即{0, 0+1};
 当第二个1g加入时，则set会插入{0+1, 1+1},就变成了{0, 1, 2};
 重复上述步骤加入所有砝码；则最后set的大小即为能产生的重量种类。
 
 */

// https://www.nowcoder.com/practice/f9a4c19050fc477e9e27eb75f3bfd49c?tpId=37&tqId=21264&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_41_FaMa {
    /*
     
     
     while let count = readLine() {
         let m: String! = readLine()
         let n: String! = readLine()
         let marr = m.components(separatedBy: " ").compactMap { Int($0) }
         let narr = n.components(separatedBy: " ").compactMap { Int($0) }
         var array = [Int]()
         for i in 0..<narr.count {
             let c = narr[i]
             for j in 0..<c {
                 array.append(marr[i])
             }
         }

         var set = Set<Int>()
         set.insert(0)
         for i in 0..<array.count {
             let cur = array[i]
             for num in set {
                 set.insert(num + cur)
             }
         }

         print(set.count)
     }
     
     
     */
}
