func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var testSetOne = Set(nums1)
    var testSetTwo = Set(nums2)
    return Array(testSetOne.intersection(testSetTwo))
}

var nums1 = [1, 2, 2, 1]
var nums2 = [2, 2]
