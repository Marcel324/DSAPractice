//https://www.hackerrank.com/challenges/mini-max-sum
//This code returns the smallest and largest sum that's possible in the given array

import Foundation

var min = 0
var max = 0
if let input = readLine() {
        let arr = input.components(separatedBy: " ").map {
            Int($0)!
        }
        var sortedArr = arr.sorted()
        for i in 0..<arr.count - 1 {
        min += sortedArr[i]
        }
        for i in 1..<arr.count {
        max += sortedArr[i]
        }
    }
    
    print("\(min) \(max)")