https://www.hackerrank.com/challenges/plus-minus?h_r=next-challenge&h_v=zen

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func plusMinus(theArray: [Int]) {
    
    var thePortions = (negatives: 0.0, zeroes: 0.0, positives: 0.0)
    for number in theArray {
        if number < 0 {
            thePortions.negatives += 1
        } else if number == 0 {
            thePortions.zeroes += 1
        } else {
            thePortions.positives += 1
        }
    }
    print(thePortions.positives/Double(theArray.count))
    print(thePortions.negatives/Double(theArray.count))
    print(thePortions.zeroes/Double(theArray.count))
    
}

plusMinus(theArray: arr)