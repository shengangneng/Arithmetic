//
//  _HJ_31_SortedWord.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation

class _HJ_31_SortedWord {
    func test(_ line: String) {
        
        let set:Set<Character> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        var start = -1
        var res = [String]()
        let chars = Array(line)
        for i in 0..<chars.count {
            let c = chars[i]
            if set.contains(c) {
                if start == -1 {
                    start = i
                }
                continue
            } else {
                if start == -1 {
                    continue
                } else {
                    let si = line.index(line.startIndex, offsetBy: start)
                    let ei = line.index(si, offsetBy: i - start)
                    let str = line[si..<ei]
                    res.append(String(str))
                    start = -1
                }
            }
        }
        if start != -1 {
            let si = line.index(line.startIndex, offsetBy: start)
            let ei = line.index(si, offsetBy: chars.count - start)
            let str = line[si..<ei]
            res.append(String(str))
            start = -1
        }
        res = res.reversed()
        var pristr = ""
        for str in res {
            if pristr.count == 0 {
                pristr.append(str)
            } else {
                pristr.append(" \(str)")
            }
        }
        print(pristr)
    }
}
