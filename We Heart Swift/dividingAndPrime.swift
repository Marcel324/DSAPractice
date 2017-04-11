//The divides function checks if 2 numbers are divisible.

func divides(_ int: Int, _ intTwo: Int) -> Bool {
    return int%intTwo==0
}

//The countDivisors function counts how many numbers are able to divide the input Int

func countDivisors(_ N: Int) -> Int {
   var divisorCounter = [Int]()
    for i in 1...N {
        if N%i==0 {
            divisorCounter.append(i)
        }
    }
    return divisorCounter.count
}

//The isPrime function checks if a number is a prime number

func isPrime(_ N: Int) -> Bool {

    if countDivisors(N) == 2 {
        return true
    }
    return false
}


