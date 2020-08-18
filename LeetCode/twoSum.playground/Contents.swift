import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (index, num) in nums.enumerated() {
        if let secondIndex = nums.firstIndex(of: target - num) {
            if index != secondIndex {
                return [index, secondIndex]
            }
        }
    }
    return []
}

twoSum([1,3,2], 5)
