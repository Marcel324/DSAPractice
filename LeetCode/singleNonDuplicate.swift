   func singleNonDuplicate(_ nums: [Int]) -> Int {
        for i in 0..<nums.count {
            if i == 0 {
                if nums[i+1] != nums[i] {
                    return nums[i]
                }
                continue
            }
            if i == nums.count - 1 {
                if nums[i - 1] != nums[i] {
                    return nums[i]
                }
                continue
            }
            if nums[i + 1] != nums[i] && nums[i-1] != nums[i] {
                return nums[i]
            }
        }
        
    return 999
}
