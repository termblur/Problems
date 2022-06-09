var temp: [Int] = []
var arr: [Int] = []
var t: Int = 0
var j: Int = 0
for i in 1...10000 {
    t += i
    j = i
    while j >= 10 {
        t += j % 10
        j /= 10
    }
    t += j
    arr.append(t)
    j = 0
    t = 0
}
temp = Array(Set(arr))
temp.sort()

t = 1
j = 0

while t <= 10000 {
    if temp[j] == t {
        j += 1
        t += 1
    } else {
        print(t)
        t += 1
    }
}