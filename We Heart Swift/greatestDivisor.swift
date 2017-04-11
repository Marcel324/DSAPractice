var numbers = [12, 36, 720, 18]

// your code here

var smallestNumber = numbers.sorted()[0]

while smallestNumber != 0 {
    for (index, i) in numbers.enumerated() {
        if i%smallestNumber != 0 {
            smallestNumber -= 1
            break
        }
        if i%smallestNumber == 0 && index == numbers.count-1 {
            print(smallestNumber)
            smallestNumber = 0
        }
    }
}
