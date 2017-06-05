https://leetcode.com/problems/hamming-distance/#/description

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var hammingDistance = 0
    var xOrNumber = x^y
    
    while xOrNumber != 0 {
        if xOrNumber % 2 == 1 {
            hammingDistance += 1
        }
        xOrNumber = xOrNumber >> 1
    }
    
    return hammingDistance
}
