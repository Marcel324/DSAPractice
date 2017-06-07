//https://leetcode.com/problems/add-strings/#/description
//This function takes two string representations of numbers, adds them then returns a string representation of their sum.

func addStrings(_ num1: String, _ num2: String) -> String {
    var largerArray = [Int]()
    var smallerArray = [Int]()
    
    var num1Arr = num1.characters.map{Int("\($0)")!}
    var num2Arr = num2.characters.map{Int("\($0)")!}
    var carryTheOne = false
    var sumArray = [Int]()
    
    if num1Arr.count <= num2Arr.count {
        largerArray = num2Arr
        smallerArray = num1Arr
    } else {
        largerArray = num1Arr
        smallerArray = num2Arr
    }
    
    var extraDigits = largerArray.count - smallerArray.count
    
    if extraDigits > 0 {
        var zeroesArray = [Int]()
        while extraDigits != 0 {
            zeroesArray.append(0)
            extraDigits -= 1
        }
        smallerArray = zeroesArray + smallerArray
        largerArray
    }
        for index in 0..<smallerArray.count {
            var sum = (smallerArray[smallerArray.count - 1 - index] + largerArray[largerArray.count - 1 - index])
            
            if carryTheOne == true {
                sum = sum + 1
            }
            
            sumArray.append(sum % 10)
            
            carryTheOne = sum > 9
            
    }
    
    if carryTheOne == true {
        sumArray.append(1)
    }
    
    sumArray = sumArray.reversed()

    
    return sumArray.map{String($0)}.reduce("", +)
}