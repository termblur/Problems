class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var answer: [[Int]] = []
        var res: [Int] = [Int](repeating: 0, count: nums.count)
        var ch: [Int] = [Int](repeating: 0, count: nums.count)
        
        func order(_ L: Int) {
            if L == nums.count {
                answer.append(res)
            } else {
                for i in 0..<nums.count {
                    if ch[i] == 0{
                        ch[i] = 1
                        res[L] = nums[i]
                        order(L+1)
                        ch[i] = 0
                    }

                }

            }
        }
        
        order(0)
        return answer
        
    }
    
    
}