def solution(triangle):
    n = len(triangle)
    copy = []
    for i in range(n):
        temp = []
        for j in range(i+1):
            temp.append(0)
        copy.append(temp)
    copy[0][0] = triangle[0][0]
    
    for i in range(1, n):
        for j in range(i+1):
            if j == 0:
                copy[i][j] = copy[i-1][j] + triangle[i][j]
            elif j == i:
                copy[i][j] = copy[i-1][j-1] + triangle[i][j]
            else:
                copy[i][j] = max(copy[i-1][j-1] + triangle[i][j], copy[i-1][j] + triangle[i][j])

    return max(copy[n-1])