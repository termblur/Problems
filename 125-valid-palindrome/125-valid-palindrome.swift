class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var temp: [Character] = []
        for c in s.uppercased() {
            if c.isLetter || c.isNumber {
                temp.append(c)
            }
        }
        return temp == temp.reversed()
    }
}