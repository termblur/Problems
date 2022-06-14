class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answer: [Int] = []
        var flag: Int = 0
        for i in 0..<temperatures.count-1 {
            flag = 0
            for j in i+1..<temperatures.count {
                if temperatures[i] < temperatures[j] {
                    answer.append(j-i)
                    flag = 1
                    break
                }
                
            }
            if flag == 0 {
                answer.append(0)
            }
        }
        answer.append(0)
        
        return answer
    }
}