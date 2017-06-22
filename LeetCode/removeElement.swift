//This function removes every instance of an element that is specified. The removal is in constant time. 

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count > 1 else {
        if !nums.isEmpty && nums[0] == val {
            nums.remove(at: 0)
        }
        return nums.count
    }
    //print(nums.count - 1)
    var i = 0
    while i < nums.count {
        //print(i)
        if nums[i] == val {
            if val == nums[nums.count - 1] {
                nums.remove(at: nums.count - 1)
                continue
               // print(nums)
            } else {
                swap(&nums[i], &nums[nums.count - 1])
                nums.remove(at: nums.count - 1)
            }
    }
        i += 1
}
    return nums.count
}