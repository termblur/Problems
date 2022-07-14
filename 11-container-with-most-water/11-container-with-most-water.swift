class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxNum: Int = 0
        var l = 0
        var r = height.count-1
        
        while l < r {
            maxNum = max(maxNum, (r-l)*min(height[l], height[r]))
            if height[l] <= height[r] {
                l += 1
            } else {
                r -= 1
            }   
        }
        return maxNum
    }
}