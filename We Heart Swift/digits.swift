//This function returns the digits of the number given in an array

func digits(_ N: Int) -> [Int] {
    guard N >= 10 else {return [N]}
    
    return digits(N/10) + [N%10]
}



