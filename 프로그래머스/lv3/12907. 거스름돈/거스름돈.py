def solution(n, money):
    res = [1] + [0] * n
        
    for i in range(len(money)):
        for j in range(money[i], n+1):
            res[j] += res[j-money[i]]
    
    return res[n] % 1000000007