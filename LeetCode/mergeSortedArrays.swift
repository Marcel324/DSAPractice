https://leetcode.com/problems/merge-sorted-array/#/description

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    guard nums2.count > 0 else { return }
    
    nums1 = Array(nums1.dropLast(nums1.count - m))
    
    
    for i in nums2 {
        nums1.append(i)
    }
    
    nums1.sorted()
}
