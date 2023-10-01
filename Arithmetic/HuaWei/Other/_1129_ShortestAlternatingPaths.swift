//
//  _1129_ShortestAlternatingPaths.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

// https://leetcode.cn/problems/shortest-path-with-alternating-colors/description/

/*
3 arrays:
- graph to store nodes' relationship using 0 represents red edge and 1 represents blue edge
- visited record have we been to this node
- dist record the shortest path so default value we set all Int.max

using BFS:
- first we use 2 for loop store relations to graph
- use a queue begin with (0, -1)
- according to current node and colour we can get the list of next node and colour from graph
- if we haven't visited the next node && next colour != current colour we add this node to queue
- we update visited and dist for the next node at the same time
- coz we can start from red or blue means we have 2 results for every nodes
- final loop just find the shortest path in every node

time: O(v + e) where v means vertices e means edges
space: O(v + e) where v means vertices e means edges

*/
struct _1129_ShortestAlternatingPaths {
    
    func shortestAlternatingPaths(_ n: Int, _ red_edges: [[Int]], _ blue_edges: [[Int]]) -> [Int] {
        var graph = Array(repeating: [(Int, Int)](), count: n)
        var visited = Array(repeating: [false, false], count: n)
        var dist = Array(repeating: [Int.max, Int.max], count: n)
        
        // build the graph
        for redE in red_edges {
            graph[redE[0]].append((redE[1], 0))
        }
        for blueE in blue_edges {
            graph[blueE[0]].append((blueE[1], 1))
        }
        
        dist[0][0] = 0 // for red distance
        dist[0][1] = 0 // for blue distance
        visited[0][0] = true // for red visited
        visited[0][1] = true // for blue visited
        
        var queue = [(Int, Int)]()
        queue.append((0, -1))
        
        while !queue.isEmpty {
            let (currentNode, currentColour) = queue.removeFirst()
            for (nextNode, nextColour) in graph[currentNode] {
                // if 1: we haven't been to the next node
                // && 2: the next node's colour isn't equal to the current node's
                if !visited[nextNode][nextColour] && nextColour != currentColour {
                    visited[nextNode][nextColour] = true
                    queue.append((nextNode, nextColour))
                    dist[nextNode][nextColour] = dist[currentNode][nextColour == 1 ? 0 : 1] + 1
                }
            }
        }
        
        var res = [Int]()
        for distance in dist {
            let d = min(distance[0], distance[1])
            if d == Int.max {
                res.append(-1)
            } else {
                res.append(d)
            }
        }
        return res
    }
}
