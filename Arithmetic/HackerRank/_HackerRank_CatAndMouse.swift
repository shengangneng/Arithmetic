//
//  _HackerRank_CatAndMouse.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 x = 1  y = 2  c = 3，y会先到达并抓到老鼠
 x = 1  y = 3  c = 2，xy同时到达打架，老鼠逃脱
 */

// https://www.hackerrank.com/challenges/cats-and-a-mouse/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_CatAndMouse {
    
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        
        if abs(x - z) == abs(y - z) {
            return "Mouse C"
        } else {
            if abs(x - z) > abs(y - z) {
                return "Cat B"
            } else {
                return "Cat A"
            }
        }
    }
}
