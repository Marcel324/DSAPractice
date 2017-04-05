https://www.hackerrank.com/challenges/diagonal-difference

import Foundation

// read the integer n
let n = Int(readLine()!)!

// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

func diagonalDifferenceIn(theMatrix: [[Int]]) {
    var backwardIndex = theMatrix[0].count - 1
    var forwardIndex = 0
    var forwardDiagonal = 0
    var backwardDiagonal = 0
    for row in theMatrix {
        forwardDiagonal += row[forwardIndex]
        backwardDiagonal += row[backwardIndex]
        forwardIndex += 1
        backwardIndex -= 1
    }
    
    print(abs(forwardDiagonal - backwardDiagonal))
}

diagonalDifferenceIn(theMatrix: arr)