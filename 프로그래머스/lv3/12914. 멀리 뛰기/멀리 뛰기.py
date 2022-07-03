def solution(n):
    answer = [0] * (n+1)
    answer[0] = 1
    answer[1] = 1
    
    # for s in [1, 2]:
    #     for j in range(s, n+1):
    #         answer[j] += answer[j-s]
    
    for i in range(2, n+1):
        answer[i] = answer[i-1] + answer[i-2]

    return answer[n]%1234567
    