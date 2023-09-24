//
//  _1091_ShortestPathBinaryMatrix.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _1091_ShortestPathBinaryMatrix {
    
    /*
     
     主要的思路便是广度优先搜索。

     首先如果 grid[0][0] == 1，那么显然不存在最短路径，因此直接返回 -1。

     若 grid[0][0] == 0，则定义一个数组 dist 用于保存 grid[0][0] 到 grid[n - 1][n - 1] 的最短路径，其中 dist[0][0] 初始化为 1，表明起点已经遍历过，其余所有点均初始化为 Int.max，方便后续辨识遍历过的点。

     首先，将单元格 [0, 0] 放入一个队列中，并不断进行如下操作：

     如果队列为空，表明没有符合条件的路径，直接返回 -1；
     从队列中取出单元格 [x, y]，如果该单元格为 [n - 1, n - 1]，表明到达右下角的终点，返回 dist[x][y]；
     遍历该单元格的所有相邻单元格，如果相邻单元格 [nextx, nexty] 不越界，值为 0 且还没有被访问过，则令 dist[nextx][nexty] = dist[x][y] + 1，并将该相邻单元格 [nextx, nexty] 放入队列中。
     复杂度：

     时间复杂度：O(n2)O(n^2)O(n
     2
      )（220 ms，击败 100%）
     空间复杂度：O(n2)O(n^2)O(n
     2
      )（13.6 MB，击败 100%）
     其中 nnn 为该数组的边长。

     作者：卢佳泉
     链接：https://leetcode.cn/problems/shortest-path-in-binary-matrix/solutions/2284933/swift-yan-du-you-xian-sou-suo-by-gaaichy-e5wu/
     来源：力扣（LeetCode）
     著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
     
     
     */
    
    
    private let directions = [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [-1, 1], [1, -1], [-1, -1]]
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        let n = grid.count
        if grid[0][0] == 1 || grid[n - 1][n - 1] == 1 {
            return -1
        }
        
        var dist = [[Int]](repeating: [Int](repeating: Int.max, count: n), count: n)
        dist[0][0] = 1
        
        var queue: [[Int]] = [[0, 0]]
        while queue.count > 0 {
            let x = queue[0][0]
            let y = queue[0][1]
            queue.removeFirst()
            if x == n - 1 && y == n - 1 {
                return dist[x][y]
            }
            for direction in self.directions {
                let nextx = x + direction[0]
                let nexty = y + direction[1]

                if nextx >= 0 && nextx < n &&
                nexty >= 0 && nexty < n &&
                grid[nextx][nexty] == 0 &&
                dist[nextx][nexty] > dist[x][y] + 1 {
                    dist[nextx][nexty] = dist[x][y] + 1
                    queue.append([nextx, nexty])
                }
            }
        }
        return -1
    }
    
    
    
    /*
     
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        var grid = grid
        let n = grid.count
        if grid[0][0] == 1 || grid[n - 1][n - 1] == 1 { return -1 }
        let res = move((0, 0), (n - 1, n - 1), &grid)
        return res >= 10000 ? -1 : res
    }

    // 从from移动到to有多少种走法
    func move(_ from: (Int, Int), _ to: (Int, Int), _ grid: inout [[Int]]) -> Int {
        let n = grid.count
        // 如果已经走到最后一个位置了，那么已经没有更多走法了
        if from.0 == n - 1 && from.1 == n - 1 { return 1 }
        var right: Int?
        if from.0 + 1 < n && grid[from.0 + 1][from.1] != 1 {
            right = 1 + move((from.0 + 1, from.1), to, &grid)
        }
        var down: Int?
        if from.1 + 1 < n && grid[from.0][from.1 + 1] != 1 {
            down = 1 + move((from.0, from.1 + 1), to, &grid)
        }
        var rightDown: Int?
        if from.0 + 1 < n && from.1 + 1 < n && grid[from.0 + 1][from.1 + 1] != 1 {
            rightDown = 1 + move((from.0 + 1, from.1 + 1), to, &grid)
        }
        if right == nil && down == nil && rightDown == nil { return 10000 }

        if right != nil && down == nil && rightDown == nil { return right! }
        if right == nil && down != nil && rightDown == nil { return down! }
        if right == nil && down == nil && rightDown != nil { return rightDown! }

        if right != nil && down != nil && rightDown == nil { return min(right!, down!) }
        if right != nil && down == nil && rightDown != nil { return min(right!, rightDown!) }
        if right == nil && down != nil && rightDown != nil { return min(down!, rightDown!) }

        return min(min(right!, down!), rightDown!)
    }
     
     */
}
