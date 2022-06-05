let n = Int(readLine()!)
var arr: [Int] = [0, 1]

if let n = n {
    if n > 1 {
        for i in 2...n {
            arr.append(arr[i-1]+arr[i-2])
        }
    }
print("\(arr[n])")
}