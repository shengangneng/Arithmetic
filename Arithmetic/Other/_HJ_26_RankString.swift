//
//  _HJ_26_RankString.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _HJ_26_RankString {
    func test(_ line: String) {
        let map = ["a":1,"A":1,"b":2,"B":2,"c":3,"C":3,"d":4,"D":4,"e":5,"E":5,"f":6,"F":6,"g":7,"G":7,"h":8,"H":8,"i":9,"I":9,"j":10,"J":10,"k":11,"K":11,"l":12,"L":12,"m":13,"M":13,"n":14,"N":14,"o":15,"O":15,"p":16,"P":16,"q":17,"Q":17,"r":18,"R":18,"s":19,"S":19,"t":20,"T":20,"u":21,"U":21,"v":22,"V":22,"w":23,"W":23,"x":24,"X":24,"y":25,"Y":25,"z":26,"Z":26]
        
        var res = ""
        var chars = Array(line)
        let origin = chars
        for i in 0..<chars.count where res.count < origin.count {
            var preIndex = -1
            var space: String? = nil
            for j in i..<chars.count {
                let str = String(chars[j])
                let ori = String(origin[i])
                if map[ori] == nil {
                    space = ori
                    break
                }
                
                if map[str] == nil {
                    continue
                } else {
                    if preIndex == -1 {
                        preIndex = j
                    } else {
                        let value = map[str]!
                        let preValue = map[String(chars[preIndex])]!
                        if value < preValue {
                            preIndex = j
                        }
                    }
                }
            }
            if space != nil {
                res.append(space!)
                chars.insert(contentsOf: space!, at: i)
                continue
            }
            let value = chars[preIndex]
            res.append(String(value))
            if preIndex == i { continue }
            chars.remove(at: preIndex)
            chars.insert(value, at: i)
        }
        print(res)
    }
}
