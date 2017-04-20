//https://www.hackerrank.com/challenges/2d-array

//Graphically for this problem an hourglass is elements falling in this order 
// a b c
//   d
// e f g

//This function returns the largest sum of an entire hourglass

import Foundation



// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<6 {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}


func maxHourGlass(matrix: [[Int]]) {
    var sum = Int.min
    for (index, arr) in matrix.enumerated() {
        guard index < 4 else { break }
       
        for i in 0...3 {
        let hourglassTotal =  arr[i] + arr[i+1] + arr[i+2] + matrix[index+1][i+1] + matrix[index+2][i] + matrix[index+2][i+1] + matrix[index+2][i+2] 
            if sum < hourglassTotal {
                sum = hourglassTotal
            }
        }
    }
    print(sum)
}

maxHourGlass(matrix: arr)