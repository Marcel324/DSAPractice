//This function determines if Mario can finish the level based on the heights of the pipes found on the level

func levelCost(heights: [Int], maxJump: Int) -> Int {
    var energyPoints = 0
    
    for i in 1..<heights.count {
        if heights[i] == heights[i-1] {
            energyPoints += 1
            continue
        }
        
        if heights[i] != heights[i-1] && abs(heights[i] - heights[i-1]) <= maxJump {
            energyPoints += (abs(heights[i] - heights[i-1]) * 2)
        } else {
            return -1
        }
    }
    
    return energyPoints
}
