//This Function will reverse an array of Ints

func reverse(_ numbers: [Int]) -> [Int] {
    var returnArray = [Int]()
    for i in 0..<numbers.count {
        returnArray.append(numbers[numbers.endIndex - 1 - i])
    }
    return returnArray
}
