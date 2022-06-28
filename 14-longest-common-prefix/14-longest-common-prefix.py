class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        i = 0
        answer = ""
        
        while True:
            if i < len(strs[0]) :
                temp = strs[0][i]
            else:
                break
                
            for s in strs:
                if i >= len(s) or s[i] != temp:
                    break
            else:
                answer += temp
                i += 1
                continue
            break
        
        return answer