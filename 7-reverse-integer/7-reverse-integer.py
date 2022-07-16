class Solution:
    def reverse(self, x: int) -> int:
        if x >= 0:
            temp = ''
            for k in str(x):
                temp = k + temp
        else:
            temp = ''
            for k in str(x):
                if k != '-':
                    temp = k + temp
            temp = '-' + temp
        
        if int(temp) > 2**31 - 1 or int(temp) < -(2**31):
            return 0
        else:
            return int(temp)