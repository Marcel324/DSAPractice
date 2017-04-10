https://leetcode.com/submissions/detail/99710806/


//This solution sorts the array, and gives the string value to each element. Then you loop through the original array and append the given string value to a new array and return that one. 
func findRelativeRanks(_ nums: [Int]) -> [String] {
    var sortedArray = nums.sorted(by: >)
   
    var rankedDict = [Int: String]()
    var rankedArray = [String]()
    for i in 0..<sortedArray.count {
        switch i {
        case 0:
           rankedDict[sortedArray[0]] = "Gold Medal"
        case 1:
            rankedDict[sortedArray[1]] = "Silver Medal"
        case 2:
            rankedDict[sortedArray[2]] = "Bronze Medal"
        default:
            rankedDict[sortedArray[i]] = "\(i + 1)"
        }
    }
    
    for i in nums {
        rankedArray.append(rankedDict[i]!)
    }
    return rankedArray
}
