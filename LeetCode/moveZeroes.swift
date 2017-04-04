func moveZeroes(_ nums: inout [Int]) {

    var whichZeroToMove = 0
    for i in 0..<nums.count {
        
        if nums[i] == 0 {
            print("Element: \(nums[i])")
            nums.append(0)
            print("loop: \(i)")
            print(nums)
            nums.remove(at: whichZeroToMove)
                    }
    }
    
    //Other Attempts
    
    //    var howManyZeroes = 0
//    for i in 0..<nums.count {
//        if nums[i] == 0 {
//            howManyZeroes += 1
//        }
//    }
//    nums = nums.filter{ $0 != 0}
//
//    for i in 0..<howManyZeroes {
//        nums.append(0)
//    }
}

var nums = [1, 0, 0, 1, 2, 0, 4, 65, 0, 0, 0]

func moveZeroesTwo(arr: inout [Int]) -> [Int] {
    var zeroFinderIndex = 0
    var numberFinderIndex = 0
    
    while zeroFinderIndex < arr.count && numberFinderIndex < arr.count - 1 {
        if arr[zeroFinderIndex] == 0 {
            numberFinderIndex += 1
            print("numberFinderIndex: \(numberFinderIndex)")
            if arr[numberFinderIndex] != 0 {
                swap(&arr[zeroFinderIndex], &arr[numberFinderIndex])
            }
        } else {
            zeroFinderIndex += 1
            print("zeroFinderIndex: \(zeroFinderIndex)")
        }
    }
    
    return arr
}
