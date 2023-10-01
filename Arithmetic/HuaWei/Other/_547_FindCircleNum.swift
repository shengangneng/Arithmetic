//
//  _547_FindCircleNum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _547_FindCircleNum {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var setArray = [Set<Int>]()
        for i in 0..<isConnected.count {
            for j in 0..<isConnected.count where j != i {
                let cn = isConnected[i][j]
                if cn == 1 {
                    // 找到合适的set放进去
                    var iIndex = -1
                    var jIndex = -1
                    for k in 0..<setArray.count {
                        let s = setArray[k]
                        if s.contains(i) {
                            setArray[k].insert(j)
                            iIndex = k
                        }
                        if s.contains(j) {
                            setArray[k].insert(i)
                            jIndex = k
                        }
                    }
                    if iIndex != -1 && jIndex != -1 && iIndex != jIndex {
                        for s in setArray[jIndex] {
                            setArray[iIndex].insert(s)
                        }
                        setArray.remove(at: jIndex)
                    } else if iIndex == -1 && jIndex == -1 {
                        setArray.append([i, j])
                    }
                }
            }
        }
        
        if setArray.count == 0 { return isConnected.count }
        
        var total = 0
        for s in setArray {
            total += s.count
        }
        return (isConnected.count - total) + setArray.count
    }
}


/*
 
      0 1 2 3
    0 1 0 0 1
    1 0 1 1 0
    2 0 1 1 1
    3 1 0 1 1
    
    [0,3]
    [1,2]
    [2,3]
    
 
    1:4
    2:3
    3:2\4
    4:1\3
 */
