func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var onesCounter = 0
    var max = 0
    for number in nums {
        if number == 1 {
            onesCounter += 1
        } else {
            if onesCounter > max {
            max = onesCounter
            }
            onesCounter = 0
        }
    }
    if onesCounter > max {
        max = onesCounter
    }
    return max
}

