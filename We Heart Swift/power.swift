//This function returns X to the power of Y

func pow(_ x: Int, _ y: Int) -> Int {
    guard y > 0 else {return 1}
    
    return x * pow(x, y - 1 )
}

