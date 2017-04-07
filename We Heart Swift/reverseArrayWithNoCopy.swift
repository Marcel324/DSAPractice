
var listOfNumbers = [1, 4, 2, 3, 5, 1]

// your code here

var endIndex = listOfNumbers.count - 1

for i in 0...listOfNumbers.count - 1 {
    if endIndex <= i {
        break
    }
    var holdNumber = listOfNumbers[endIndex]
    listOfNumbers[endIndex] = listOfNumbers[i]
    listOfNumbers[i] = holdNumber
    endIndex -= 1
}


print(listOfNumbers)
