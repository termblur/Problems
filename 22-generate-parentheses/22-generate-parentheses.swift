class Solution {
    var arr: [String] = []
    
    func generateParenthesis(_ n: Int) -> [String] {
        var temp: String = ""
        var cnt = 0
        
        paren(L: 0, temp: temp, cnt: cnt, n: n)
        return arr 
    }
    
    
    func paren(L: Int, temp: String, cnt: Int, n: Int) {
        if L == 2*n {
            if cnt == 0 {
                arr.append(temp)
            }
        }
        
        else {
            if cnt <= 0 {
                paren(L: L+1, temp: temp+"(", cnt: cnt+1, n: n)
            } else if cnt < n {
                paren(L: L+1, temp: temp+"(", cnt: cnt+1, n: n)
                paren(L: L+1, temp: temp+")", cnt: cnt-1, n: n)
            } else {
                paren(L: L+1, temp: temp+")", cnt: cnt-1, n: n)
            }
            
        }
    }
    
}