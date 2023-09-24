//
//  _944_OrangesRotting.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _944_OrangesRotting {
    // 暴力
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        var time = 0
        while true {
            time += 1
            let res = makeBad(&grid)
            if res.0 == 0 {
                // 如果原本就没有好的苹果了
                time -= 1
                break
            }
            if res.1 == 0 {
                // 如果本次没有弄坏任何苹果
                if res.0 > 0 {
                    // 如果还剩余苹果
                    time = -1
                }
                break
            }
        }
        return time
    }

    /*
    @return 返回“原本有多少个好的”，“本次弄坏了多少个”
    */
    private func makeBad(_ grid: inout [[Int]]) -> (Int, Int) {
        let m = grid[0].count
        let n = grid.count

        var badArray = [[Int]]()
        var goodArray = [[Int]]()
        for x in 0..<n {
            for y in 0..<m {
                if grid[x][y] == 0 { continue }
                if grid[x][y] == 1 {
                    goodArray.append([x, y])
                    continue
                }
                // 判断上下左右是否有橘子，记录下来，统一进行坏掉处理
                // up
                if (y - 1) >= 0 && grid[x][y - 1] == 1 {
                    badArray.append([x, y - 1])
                }
                // down
                if (y + 1) < m && grid[x][y + 1] == 1 {
                    badArray.append([x, y + 1])
                }
                // left
                if (x - 1) >= 0 && grid[x - 1][y] == 1 {
                    badArray.append([x - 1, y])
                }
                // right
                if (x + 1) < n && grid[x + 1][y] == 1 {
                    badArray.append([x + 1, y])
                }
            }
        }
        for bad in badArray {
            grid[bad[0]][bad[1]] = 2
        }
        return (goodArray.count, badArray.count)
    }
}
