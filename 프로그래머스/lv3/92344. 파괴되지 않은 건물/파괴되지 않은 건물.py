def solution(board, skill):
    answer = 0
    n = len(board)
    m = len(board[0])
    square = [[0] * (m+1) for _ in range(n+1)]
                    
    for s in skill:
        if s[0] == 1:
            square[s[1]][s[2]] -= s[5]
            square[s[1]][s[4]+1] += s[5]
            square[s[3]+1][s[2]] += s[5]
            square[s[3]+1][s[4]+1] -= s[5]          
        else:
            square[s[1]][s[2]] += s[5]
            square[s[1]][s[4]+1] -= s[5]
            square[s[3]+1][s[2]] -= s[5]
            square[s[3]+1][s[4]+1] += s[5]
        
    for i in range(len(square)):
        for j in range(1, len(square[0])):
            square[i][j] += square[i][j-1]
    
    for j in range(len(square[0])):
        for i in range(1, len(square)):
            square[i][j] += square[i-1][j]
        
    for i in range(len(board)):
        for j in range(len(board[0])):
            board[i][j] += square[i][j]
            if board[i][j] > 0:
                answer += 1
    
    return answer