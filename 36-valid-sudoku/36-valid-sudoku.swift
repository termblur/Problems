class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var temp: [Character] = []
        var tempArr = transpose(board)
        
        for i in 0..<9 {
            temp = []
            for s in board[i] {
                if s.isNumber {
                    temp.append(s)
                }
            }
            if temp.count != Set(temp).count {
                return false
            }
        }
        
        for i in 0..<9 {
            temp = []
            for s in tempArr[i] {
                if s.isNumber {
                    temp.append(s)
                }
            }
            if temp.count != Set(temp).count {
                return false
            }
        }
        
        for i in stride(from: 0, to: 9, by: 3) {
            for j in stride(from: 0, to: 9, by: 3) {
                temp = []
                for k in 0..<3 {
                    for m in 0..<3 {
                        if board[i+k][j+m].isNumber {
                            temp.append(board[i+k][j+m])
                        }
                    }
                }
                if temp.count != Set(temp).count {
                    return false
                }
            }
        }
        
        return true
    }
    
    
    
    func transpose(_ A: [[Character]]) -> [[Character]] {      
        var c: [[Character]] = Array(repeating: Array(repeating: ".", count: A.count), count: A[0].count)

        for i in 0..<A.count {
            for j in 0..<A[i].count {
                c[j][i] = A[i][j]
            }
        }
        return c
    }
}