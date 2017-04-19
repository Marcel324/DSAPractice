//This function gives the largest product of two adjacent elements

func adjacentElementsProduct(inputArray: [Int]) -> Int {
guard inputArray.count > 2 else {return inputArray[0] * inputArray[1]}
    var product = Int.min
    
    for i in 1..<inputArray.count - 1 {
        if inputArray[i] * inputArray[i - 1] > product {
            product = inputArray[i] * inputArray[i - 1]
        }
        
        if inputArray[i] * inputArray[i + 1] > product {
            product = inputArray[i] * inputArray[i + 1]
        }
    }
    return product
}
