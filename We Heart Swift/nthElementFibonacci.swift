// This function returns the Nth number of the fibonacci sequence

func fibonacci(_ N: Int) -> Int {
    guard N > 2 else  { return 1 }
    
    return fibonacci(N-2) + fibonacci(N-1)
}