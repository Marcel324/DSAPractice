//This function does a binary search

func binarySearch(_ key: Int, 
                  _ numbers: [Int], 
                  left: Int = 0, 
                  right: Int = -1) -> Bool {
    var right = right
    if right == -1 {
        right = numbers.count - 1
    }
    
    var mid = numbers.count / 2

    guard key != numbers[mid] else {return true}
    guard key != numbers[left] else {return true}
    guard key != numbers[right] else {return true}
    if numbers.count == 2 && numbers[left] != key && numbers[right] != key {
        return false
    }
    //guard numbers.count > 0 else {return false}
    return key > numbers[mid] ? binarySearch(key, Array(numbers[mid...right]), left: left , right: -1) : binarySearch(key, Array(numbers[left...mid]), left: left, right: -1)
    
    return false
}