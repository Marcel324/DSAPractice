//This function returns the factorial of the given element

func factorial(_ N: Int) -> Int {
    guard N > 1 else { return 1 }
    
    return N * factorial(N-1)
}
