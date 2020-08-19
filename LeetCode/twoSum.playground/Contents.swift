import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var previousIntDict = [Int:Int]()
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let element = previousIntDict.first(where: { (element) in
            return element.value == complement
        }) {
            return [index, element.key]
        }
        previousIntDict[index] = num
    }
    return []
}

twoSum([3, 3], 6)
twoSum([3, 1, 8], 11)
