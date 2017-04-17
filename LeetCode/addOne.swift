//This function adds one to the array

func plusOne(digits: [Int]) -> [Int] {
    var digits = digits
    for index in 0..<digits.count {
        if digits[digits.count - 1 - index] < 9 {
            digits[digits.count - 1 - index] += 1
            return digits
        } else {
            digits[digits.count - 1 - index] = 0
        }
    }
    digits.insert(1, at: 0)
    return digits
}
