//https://leetcode.com/problems/search-insert-position/#/description

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
 
    var arr = nums
    guard target > nums.first! else {
        arr.insert(target, at: 0)
        return 0 }
    
    for (index, i) in nums.enumerated() {
        if i == target {
            return index
        }
        if arr[index] == arr.last! {
            arr.insert(target, at: index + 1)
            return index + 1
        }
        if i < target && nums[index + 1] > target {
            arr.insert(target, at: index + 1)
            return index + 1
        }
           }
   return 0
}