let n = Int(readLine()!)!
let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
var minNum: Int = temp.min()!
var maxNum: Int = temp.max()!
print("\(minNum) \(maxNum)")