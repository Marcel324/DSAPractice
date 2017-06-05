https://leetcode.com/problems/reshape-the-matrix/#/description

func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]]{
    guard r * c == nums[0].count * nums.count else { return nums}
    var flattenedMatrix = nums.flatMap { $0 }
    
    var reshapedMatrix = [[Int]]()
    var index = 0
    
    for rows in 0..<r {
        var newRow = [Int]()
        for number in index..<index + c {
            newRow.append(flattenedMatrix[number])
        }
        index = index + c
        reshapedMatrix.append(newRow)
    }
    
    
    
    return reshapedMatrix
}
