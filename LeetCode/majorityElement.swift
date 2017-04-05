https://leetcode.com/problems/majority-element/#/description

func majorityElement(_ nums: [Int]) -> Int {
    var dictCounter = [Int: Int]()
    var theMajorityElement = 0
    for i in nums {
        if dictCounter[i] == nil {
            dictCounter[i] = 1
        } else {
            dictCounter[i]! += 1
        }
        if dictCounter[i]! > (nums.count/2) {
            return i
        }
    }
    return 999
}
