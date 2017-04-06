https://leetcode.com/problems/contains-duplicate/#/description

func containsDuplicate(_ nums: [Int]) -> Bool {
        var dictCounter: [Int: Int] = [:]
        for number in nums {
            if dictCounter[number] == nil {
                dictCounter[number] = 1
            } else {
                dictCounter[number]! += 1
            }
         if dictCounter[number]! == 2 {
             return true
         }   
        }
        return false
    }