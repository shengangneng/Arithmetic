//
//  _111_RecoverArray.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// https://leetcode.cn/problems/find-array-given-subset-sums/solutions/1999957/cong-zi-ji-de-he-huan-yuan-shu-zu-by-lit-juvz/
struct _111_RecoverArray {
    // https://leetcode.cn/problems/find-array-given-subset-sums/solutions/1999957/cong-zi-ji-de-he-huan-yuan-shu-zu-by-lit-juvz/
    func recoverArray(_ n: Int, _ sums: [Int]) -> [Int] {
        var sums = sums.sorted(by: <)
        
        let min = sums[0]
        var set = Set<Int>()
        for num in sums {
            set.insert(num + min)
        }
        var res = [Int]()
        res.append(set.first!)
        set.removeFirst()
        for i in 1..<n {
            for zip in (1<<(i - 1))...(1<<i - 1) {
                var sum = 0
                for j in 0..<i {
                    if (((zip >> j) & 1) != 0) {
                        sum += res[j]
                    }
                }
                set.remove(at: set.firstIndex(of: sum)!)
            }
            res.append(set.first!)
        }
        for zip in 0...((1 << n) - 1) {
            var sum = 0
            for j in 0..<n {
                if (((zip >> j) & 1) != 0) {
                    sum += res[j]
                }
            }
            if sum == min {
                for j in 0..<n {
                    if (((zip >> j) & 1) != 0) {
                        res[j] *= -1
                    }
                }
                break
            }
        }
        
        return res
    }
}


/*
 
 class Solution {
 public:
     vector<int> recoverArray(int n, vector<int>& sums) {
         sort(sums.begin(), sums.end());
         int M = -sums[0];
         multiset<int> se;
         for (int val : sums) se.insert(M+val);
         vector<int> ans;
         se.erase(se.begin());
         ans.push_back(*se.begin());
         for (int i = 1; i < n; i++)
         {
             for (int zip = 1<<(i-1); zip <= ((1<<i)-1); zip++)
             {
                 int sum = 0;
                 for (int j = 0; j < i; j++)
                 {
                     if ((zip >> j) & 1) sum+=ans[j];
                 }
                 se.erase(se.find(sum));
             }
             ans.push_back(*se.begin());
         }
         for (int zip = 0; zip <= ((1 << n) - 1); zip++)
          {
              int sum = 0;
              for (int j = 0; j < n; j++)
              {
                  if ((zip >> j) & 1)
                      sum += ans[j];
              }
              if (sum == M)
              {
                  for (int j = 0; j < n; j++)
                  {
                      if ((zip >> j) & 1)
                          ans[j] *= -1;
                  }
                  break;
              }
         }
         return ans;
     }
 };

 作者：LittleXi
 链接：https://leetcode.cn/problems/find-array-given-subset-sums/solutions/1999957/cong-zi-ji-de-he-huan-yuan-shu-zu-by-lit-juvz/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 
 */
