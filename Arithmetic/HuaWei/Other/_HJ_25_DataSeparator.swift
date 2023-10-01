//
//  _HJ_25_DataSeparator.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

// https://www.nowcoder.com/practice/9a763ed59c7243bd8ab706b2da52b7fd?tpId=37&tqId=21248&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3Fpage%3D2%26tpId%3D37%26type%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_25_DataSeparator {
    /*
     
     这道题主要是理解题意，其实没啥难度
     
     while let IStr = readLine(), let RStr = readLine() {
         var I = IStr.split(separator: " ")
         var R = RStr.split(separator: " ")
         I.removeFirst()
         R.removeFirst()
         R = Array(Set(R))
         R = R.sorted { v1, v2 in
             Int(v1)! < Int(v2)!
         }    // print(R)

         var res = [[(Int, String)]]()
         var count = 0
         for r in R {
             var temp = [(Int, String)]()
             for i in 0..<I.count {
                 let str = I[i]
                 if str.contains(r) {
                     temp.append((i, String(str)))
                 }
             }
             if temp.count > 0 {
                 count += (temp.count + 1) * 2
             }
             res.append(temp)
         }

         var string = "\(count)"
         for i in 0..<res.count {
             let arr = res[i]
             if arr.count == 0 { continue }
             let str = R[i]
             string.append(" \(str) \(arr.count)")
             for (v1, v2) in arr {
                 string.append(" \(v1) \(v2)")
             }
         }
         print(string)

     }
     
     */
}
