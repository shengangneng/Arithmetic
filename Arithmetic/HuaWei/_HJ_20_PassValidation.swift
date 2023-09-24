//
//  _HJ_20_PassValidation.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/184edec193864f0985ad2684fbc86841?tpId=37&tqId=21243&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_20_PassValidation {
    func test(_ str: String) {
        /*
         
         
         let digitS: Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]
         let wordDS: Set<Character> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
         let wordUS: Set<Character> = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
         while let str = readLine() {
             guard str.count > 8 else {
                 print("NG")
                 continue
             }

             var hasDigit = 0
             var hasWordD = 0
             var hasWordU = 0
             var hasOther = 0
             for s in str {
                 if digitS.contains(s) {
                     hasDigit = 1
                     continue
                 }
                 if wordDS.contains(s) {
                     hasWordD = 1
                     continue
                 }
                 if wordUS.contains(s) {
                     hasWordU = 1
                     continue
                 }
                 if !digitS.contains(s) &&
                 !wordDS.contains(s) &&
                 !wordUS.contains(s) {
                     hasOther = 1
                 }
             }
             if hasDigit + hasWordD + hasWordU + hasOther < 3 {
                 print("NG")
                 continue
             }
             // 说明前2个条件都判断好了，就看第3个条件了
             var hasSame = false
             var strM = [String:Int]()
             for i in 0...(str.count - 3) {
                 let start = str.index(str.startIndex, offsetBy: i)
                 let end = str.index(start, offsetBy: 3)
                 let cur = String(str[start..<end])
                 if strM[cur] == nil {
                     strM[cur] = 1
                 } else {
                     hasSame = true
                     break
                 }
             }
             if hasSame { print("NG") } else { print("OK") }
         }
         
         */
        
    }
}
