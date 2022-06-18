import Foundation
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let min: Int = input[0]
let max: Int = input[1]
let max_2: Int = Int(sqrt(Double(max)))
var arr = [Bool](repeating: false, count: max-min+1)
var answer:Int = max - min + 1
    
for i in 2..<max_2+1 {
    let squre:Int = i*i
    for j in stride(from: (((min-1)/squre)+1)*squre, through: max, by: squre) {
        if arr[j-min] == false {
            arr[j-min] = true
            answer -= 1
        }
    }
}
print(answer)