

//Solution using a repeat loop keeps track of last index a swap was made
func repeatSort(arr: inout [Int]) -> [Int] {
    var sortedAboveIndex = arr.count

repeat {
    var lastSwapIndex = 0
    
    for i in 1..<sortedAboveIndex {
        if arr[i - 1] < arr[i] {
            swap(&arr[i], &arr[i-1])
            lastSwapIndex = i
        }
    }
    sortedAboveIndex = lastSwapIndex
} while (sortedAboveIndex != 0)
    print(arr)
    return arr
}

//Solution using nested for loop will always move larger number towards the front resulting in a sorted array
func bubbleSort(arr:[Int])-> [Int]{
    var sortedArr: [Int] = arr
    for i in 0..<sortedArr.count - 1{
        for j in i + 1..<sortedArr.count{
            if sortedArr[i] > sortedArr[j]{
                let temp = sortedArr[i]
                sortedArr[i] = sortedArr[j]
                sortedArr[j] = temp
                print(sortedArr)
            }
        }
    }
    
    return sortedArr
}

