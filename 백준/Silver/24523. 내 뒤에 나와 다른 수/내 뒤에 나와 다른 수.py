n = int(input())
arr = list(map(int, input().split()))
answer=[]
p1, p2=0, 1
while p1<=p2:
    if p1==n-1:
        break
    if arr[p1]!=arr[p2]:
        answer+=[p2+1]*(p2-p1)
        p1=p2
        p2+=1
    elif p2==n-1 and arr[p1]==arr[p2]:
        answer+=[-1]*(p2-p1)
        break
    elif arr[p1]==arr[p2]:
        p2+=1
answer.append(-1)
print(*answer)