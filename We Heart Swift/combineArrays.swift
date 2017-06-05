

// This function takes in 2 arrays, a closure and returns an array. It combines them by multiplying corresponding integers. 

func combineArrays(_ arr: [Int], _ arr2: [Int], _ closure: (_ n: Int, _ m: Int) -> Int) -> [Int] {
    var newArray = [Int]()
    for i in 0..<arr.count {
        newArray.append(closure(arr[i], arr2[i]))
    }
    return newArray
}
